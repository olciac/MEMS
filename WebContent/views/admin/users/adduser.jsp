<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<title>Dodaj użytkownika</title>
<tiles:insertDefinition name="master.pageAdmin">
    <tiles:putAttribute name="body">

	<legend>Formularz rejestracji użytkownika</legend>
	
 	<div class="generic-container">

	 	<form:form method="POST" modelAttribute="user" class="form-horizontal">
			<form:input type="hidden" path="id" id="id"/>
			
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-label" for="firstName">Imię</label>
					<div class="col-md-7">
						<form:input type="text" path="firstName" id="firstName" class="form-control input-sm"/>
						<div class="has-error">
							<form:errors path="firstName" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
	
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-label" for="lastName">Nazwisko</label>
					<div class="col-md-7">
						<form:input type="text" path="lastName" id="lastName" class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="lastName" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
	
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-label" for="ssoId">Login</label>
					<div class="col-md-7">
						<c:choose>
							<c:when test="${edit}">
								<form:input type="text" path="ssoId" id="ssoId" class="form-control input-sm" disabled="true"/>
							</c:when>
							<c:otherwise>
								<form:input type="text" path="ssoId" id="ssoId" class="form-control input-sm" />
								<div class="has-error">
									<form:errors path="ssoId" class="help-inline"/>
								</div>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
	
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-label" for="password">Hasło</label>
					<div class="col-md-7">
						<form:input type="password" path="password" id="password" class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="password" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
	
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-label" for="email">Email</label>
					<div class="col-md-7">
						<form:input type="text" path="email" id="email" class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="email" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
	
<!-- 			<div class="row"> -->
<!-- 				<div class="form-group col-md-12"> -->
<!-- 					<label class="col-md-3 control-label" for="userProfiles">Role</label> -->
<!-- 					<div class="col-md-7"> -->
<%-- 						<form:select path="userProfiles" items="${roles}" multiple="true" itemValue="id" itemLabel="type" class="form-control selectpicker" /> --%>
<!-- 						<div class="has-error"> -->
<%-- 							<form:errors path="userProfiles" class="help-inline"/> --%>
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->

			<div class="row">
				<div class="col-md-2 col-md-offset-5">
					<c:choose>
						<c:when test="${edit}">
							<input type="submit" value="Zaktualizuj" class="btn btn-primary btn-lg"/>
						</c:when>
						<c:otherwise>
							<input type="submit" value="Zarejestruj" class="btn btn-primary btn-lg"/>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</form:form>
	</div>
	
    </tiles:putAttribute>
</tiles:insertDefinition>