package com.mems.controller.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mems.user.SessionDetails;


@Controller
public class LoginController {
	
	@Autowired
	SessionDetails session;
	
	@RequestMapping(value = "/" , method = RequestMethod.GET)
    public ModelAndView firstPage() {
		ModelAndView model = new ModelAndView();
		try
		{
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	        if (auth != null && getPrincipal() != null && getPrincipal() != null && session != null){    
	        	model.setViewName("home/main");
    			return model;
	        }else{
	        	model.setViewName("login");
	        	return model;
	        }
		} catch (Exception ex)
		{
			model.setViewName("login");
        	return model;
		}
    }
	
	@RequestMapping(value = "/home" , method = RequestMethod.GET)
    public String homePage(ModelMap model) {
		try
		{
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			if (auth != null && getPrincipal() != null && getPrincipal() != null && session != null)
			{
				return "home/main";
			}else {
    			return "login";
    		}
		} catch (Exception ex) {
			return "login";
		}
		
    }

	@RequestMapping(value = "/admin**", method = RequestMethod.GET)
    public String adminPage(ModelMap model) {
		return "admin/admin";
    }
	
    @RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, 
			@RequestParam(value = "timeout", required = false) String timeout, HttpServletRequest request) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", getErrorMessage(request, "SPRING_SECURITY_LAST_EXCEPTION"));
		}

		if (logout != null) {
			model.addObject("msg", "Zosta³eœ wylogowany.");
		}
		
		if (timeout != null) {
			model.addObject("msg", "Sesja aplikacji wygas³a.");
		}
		
		model.setViewName("login");

		return model;

	}
    
    @RequestMapping(value="/logout", method = RequestMethod.GET)
    public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){    
            new SecurityContextLogoutHandler().logout(request, response, auth);
            session.setLogin(null);
            session.setUserName(null);
        }
        return "redirect:/login?logout";
    }

    @RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
    public ModelAndView accessDeniedPage() {
    	
    	ModelAndView model = new ModelAndView();

		// check if user is login
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);

			model.addObject("username", userDetail.getUsername());

		}

		model.setViewName("accessDenied");
		return model;

    }
    
    private String getPrincipal(){
        String userName = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
 
        if (principal instanceof UserDetails) {
            userName = ((UserDetails)principal).getUsername();
        } else {
            userName = principal.toString();
        }
        return userName;
    }
    
    private String getErrorMessage(HttpServletRequest request, String key) {

		Exception exception = (Exception) request.getSession().getAttribute(key);

		String error = "";
		if (exception instanceof BadCredentialsException) {
			error = "Niepoprawny login lub has³o!";
		} else if (exception instanceof LockedException) {
			error = exception.getMessage();
		} else {
			error = "Problem z logowaniem!";
		}

		return error;
	}
}