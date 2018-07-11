<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<tiles:insertDefinition name="master.page">
    <tiles:putAttribute name="body">

 <div class="container-fluid">

	<div id="jumbotron">
		<center><h1>Profil użytkownika</h1></center>
		<hr>
	</div>
	
	<c:if test="${not empty success}">
	   <div class="alert alert-success alert-dismissable">
	   		<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    		<strong> ${success} </strong>
		</div>
	</c:if>
	
	<div class="row">
		<label class="col-sm-2">Login</label>
		<div class="col-sm-10">${user.ssoId}</div>
	</div>
	
	<div class="row">
		<label class="col-sm-2">Imie</label>
		<div class="col-sm-10">${user.firstName}</div>
	</div>
	
	<div class="row">
		<label class="col-sm-2">Nazwisko</label>
		<div class="col-sm-10">${user.lastName}</div>
	</div>
	
	<div class="row">
		<label class="col-sm-2">Email</label>
		<div class="col-sm-10">${user.email}</div>
	</div>
	
	<div class="row">
		<a href="<c:url value='/profile/changePassword' />" class="btn">Zmień hasło</a>
	</div>
	
</div>
 
    </tiles:putAttribute>
</tiles:insertDefinition>