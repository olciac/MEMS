<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

     <nav id="sidebar" class="sidebar-wrapper">
         <div class="sidebar-content">
             <div class="sidebar-brand">
                 <a href="#"><img src="<c:url value="/resources/img/MEMS-logo.jpg" />" style="width: 200px;" /></a>
             </div>
             <div class="sidebar-header">
                 <div class="user-pic">
                     <img id="profile-img" class="profile-img" src="<c:url value="/resources/img/user-small.png" />" />
                 </div>
                 <div class="user-info">
                     <span class="user-name">${pageContext.request.userPrincipal.name}
                         <strong>${pageContext.request.userPrincipal.name}</strong>
                     </span>
                     <span class="user-role">Użytkownik</span>
                     <span class="user-status">
                         <i class="fa fa-circle"></i>
                         <span>Online</span>
                     </span>
                 </div>
             </div>
             <div class="sidebar-menu">
                 <ul>
                     <li class="header-menu">
                         <span>Menu</span>
                     </li>
                     <li>
                         <a href="<c:url value="/home" />">
                             <i class="fa fa-book"></i>
                             <span>Lista sprzętu</span>
                         </a>
                     </li>
                     <li class="sidebar-dropdown">
                         <a href="#">
                             <i class="fa fa-tachometer-alt"></i>
                             <span>Raporty</span>
                         </a>
                         <div class="sidebar-submenu">
                             <ul>
                                 <li>
                                     <a href="#">
                                     	Raport wykazu sprzętu
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </li>
                     <li class="header-menu">
                         <span>Ustawienia</span>
                     </li>
                     <li>
                         <a href="<c:url value="/profile/userProfile" />" >
                             <i class="fa fa-user"></i>
                             <span>Profil</span>
                         </a>
                     </li>
                     <sec:authorize access="hasRole('ADMIN')">
                         <li class="header-menu">
	                         <span>Narzędzia administratorskie</span>
	                     </li>
	                     <li>
	                         <a href="<c:url value="/admin/home" />" >
	                             <i class="fa fa-unlock-alt"></i>
	                             <span>Panel administratora</span>
	                         </a>
	                     </li>
             		 </sec:authorize>
                 </ul>
             </div>
         </div>
         <div class="sidebar-footer">
             <a href="<c:url value="/logout" />" class="logout-img">
                 <i class="fa fa-power-off"></i>
             </a>
         </div>
     </nav>
