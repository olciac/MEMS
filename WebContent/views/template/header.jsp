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
                         <span>General</span>
                     </li>
                     <li class="sidebar-dropdown">
                         <a href="#">
                             <i class="fa fa-tachometer-alt"></i>
                             <span>Dashboard</span>
                         </a>
                         <div class="sidebar-submenu">
                             <ul>
                                 <li>
                                     <a href="#">Dashboard 1</a>
                                 </li>
                                 <li>
                                     <a href="#">Dashboard 2</a>
                                 </li>
                                 <li>
                                     <a href="#">Dashboard 3</a>
                                 </li>
                             </ul>
                         </div>
                     </li>
                     <li class="sidebar-dropdown">
                         <a href="#">
                             <i class="fa fa-shopping-cart"></i>
                             <span>E-commerce</span>
                         </a>
                         <div class="sidebar-submenu">
                             <ul>
                                 <li>
                                     <a href="#">Products
                                         
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">Orders</a>
                                 </li>
                                 <li>
                                     <a href="#">Credit cart</a>
                                 </li>
                             </ul>
                         </div>
                     </li>
                     <li class="header-menu">
                         <span>Extra</span>
                     </li>
                     <li>
                         <a href="#">
                             <i class="fa fa-calendar"></i>
                             <span>Calendar</span>
                         </a>
                     </li>
                     <li>
                         <a href="#">
                             <i class="fa fa-folder"></i>
                             <span>Examples</span>
                         </a>
                     </li>
                     <li>
                         <a href="#">
                             <i class="fa fa-book"></i>
                             <span>Documentation</span>
                         </a>
                     </li>
                 </ul>
             </div>
             <!-- sidebar-menu  -->
         </div>
         <!-- sidebar-content  -->
         <div class="sidebar-footer">
             <a href="<c:url value="/logout" />" class="logout-img">
                 <i class="fa fa-power-off"></i>
             </a>
         </div>
     </nav>
