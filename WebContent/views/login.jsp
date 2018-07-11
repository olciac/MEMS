<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<jsp:include page="../decorators/scripts-layout.jsp" />
<link rel="stylesheet" type="text/css" href="./resources/css/login-page.css"/>

<title>Logowanie</title>

</head>
<body>

        <div class="login">
            <div class="wrap">
                <!-- TOGGLE -->
                <div id="toggle-wrap">
                    <div id="toggle-terms">
                        <div id="cross">
                            <span></span>
                            <span></span>
                        </div>
                    </div>
                </div>

                <div class="content">
                    <!-- LOGO -->
                    <div class="logo">
                        <a href="#"><img src="https://res.cloudinary.com/dpcloudinary/image/upload/v1506186248/logo.png" alt=""></a>
                    </div>
                    <!-- SLIDESHOW -->
                    <div id="slideshow">
                        <div class="one">
                            <h2><span>MEMS</span></h2>
                            <p>Medical Equipment Management System</p>
                        </div>
                    </div>
                </div>
                <div class="user">
                    <div class="form-wrap">
                        <!-- TABS -->
                    	<div class="tabs">
                            <h3 class="login-tab"><a class="log-in active" href="#login-tab-content"><span>Logowanie<span></a></h3>
                    	</div>
                        <!-- TABS CONTENT -->
                    	<div class="tabs-content">
                            <!-- TABS CONTENT LOGIN -->
                    		<div id="login-tab-content" class="active">
                    			<form class="login-form" action="${loginUrl}" method="post">
                    				<c:if test="${not empty error}">
										<div style="color: red;">${error}</div>
									</c:if>
									<c:if test="${not empty msg}">
										<div style="color: aquamarine;">${msg}</div>
									</c:if>
                    				<input type="text" id="username" class="input" name="ssoId" autocomplete="off" placeholder="login" required autofocus><br>
                					<input type="password" id="password" class="input" name="password" autocomplete="off"  placeholder="hasło" required>
                    				<input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
                    				<input type="submit" class="button" value="Zaloguj">
                    			</form>
                    		</div>
                    	</div>
                	</div>
                </div>
            </div>
        </div>

</body>
</html>