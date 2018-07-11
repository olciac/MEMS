<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div id="top-nav" class="navbar navbar-inverse navbar-static-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="icon-toggle"></span>
      </button>
      <a class="navbar-brand" href="<c:url value="/admin/home" />">Panel administracyjny</a>
    </div>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav navbar-right">
        
        <li class="dropdown">
          <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#"><i class="glyphicon glyphicon-user"></i> ${pageContext.request.userPrincipal.name} <span class="caret"></span></a>
          <ul id="g-account-menu" class="dropdown-menu" role="menu">
            <li>
            	<a href="<c:url value="/home" />"><i class="glyphicon glyphicon-home"></i> Strona główna</a>
            </li>
            <li>
            	<a href="<c:url value="/logout" />"><i class="glyphicon glyphicon-lock"></i> Wyloguj</a>
            </li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</div>
