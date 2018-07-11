<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
	<!-- Bootstrap CSS -->
<%--     <link href="<c:url value='/resources/font-awesome/css/font-awesome.min.css' />" rel="stylesheet"/> --%>
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <link href="<c:url value='/resources/css/bootstrap/bootstrap.css' />" rel="stylesheet"/>
    <link href="<c:url value='/resources/css/layout.css'  />" rel="stylesheet"/>
    <link href="<c:url value='/resources/css/bootstrap/bootstrap-select.min.css' />" rel="stylesheet"/>
    <link href="<c:url value='/resources/css/bootstrap/bootstrap-datepicker.min.css' />" rel="stylesheet" type="text/css"/>
    
    <!-- Bootstrap Datables CSS -->
    <link href="<c:url value='/resources/css/DataTables/datatables.css"' />" rel="stylesheet"/>
    <link href="<c:url value='/resources/css/DataTables/fixedHeader.bootstrap.min.css' />" rel="stylesheet"/>
    <link href="<c:url value='/resources/css/DataTables/responsive.bootstrap.min.css' />" rel="stylesheet"/>
	
	<!-- JQuery CSS -->
	<link href="<c:url value='/resources/css/jquery-confirm.css' />" rel="stylesheet"/> 
	<link href="<c:url value='/resources/css/jquery.datetimepicker.css' />" rel="stylesheet"/> 
	
	<!-- JQuery Javascript -->
    <script src="<c:url value='/resources/js/jquery-3.2.1.js' />"></script>
	<script src="<c:url value='/resources/js/jquery-confirm.js' />"></script>
	<script src="<c:url value='/resources/js/jquery.datetimepicker.full.min.js' />"></script>
	<script src="<c:url value='/resources/js/validate/jquery.validate.min.js' />"></script>
	<script src="<c:url value='/resources/js/validate/additional-methods.min.js' />"></script>
	
	<!-- Bootstrap Javascript -->
	<script src="<c:url value='/resources/js/bootstrap/bootstrap.js' />"></script>
	<script src="<c:url value='/resources/js/bootstrap/bootstrap-datepicker.min.js' />" ></script>
	
	<!-- Bootstrap Datables Javascript -->
	<script src="<c:url value='/resources/js/DataTables/datatables.js'/>" ></script>
    <script src="<c:url value='/resources/js/DataTables/dataTables.responsive.min.js' />"></script>
    <script src="<c:url value='/resources/js/DataTables/responsive.bootstrap.min.js' />"></script>
	<script src="<c:url value='/resources/js/bootstrap/bootstrap-select.min.js' />"></script>
	<script src="<c:url value='/resources/js/bootstrap/bootstrap-confirmation.min.js' />"></script>
	<script src="<c:url value='/resources/js/colResizable-1.6.js' />"></script>
	<script src="<c:url value='/resources/js/colResizable-1.6.min.js' />"></script>
	
	<!-- Locale -->
	<script src="<c:url value='/resources/js/DataTables/translate_polish.js' />"></script>
	<script src="<c:url value='/resources/locales/bootstrap/bootstrap-datepicker.pl.min.js' />" ></script>
	<script src="<c:url value='/resources/locales/jquery.validate_pl.js' />" ></script>
	
</head>
    <body>
 		
 		<div class="page-wrapper chiller-theme toggled">
            <tiles:insertAttribute name="header" />
			<div class="page-content">
            	<div class="container-fluid">
					 <%@include file="overlay.jsp" %>
					 <tiles:insertAttribute name="body" />
           		</div>
           	</div>
        </div>
       	
        
        <script type="text/javascript">
        jQuery.datetimepicker.setLocale('pl');
        
		$('[data-toggle=confirmation]').confirmation({
			  rootSelector: '[data-toggle=confirmation]',
			  container:"body",
			  singleton: true,
			  btnOkLabel: "Tak",
			  btnCancelLabel: "Nie",
			  popout: true
			});

		$(document).ajaxStart(function(){
		    $("#overlayLoading").css("display", "block");
		});

		$(document).ajaxComplete(function(){
		    $("#overlayLoading").css("display", "none");
		});
		$(document).ajaxError(function( event, request, settings ) {
			console.log("ajaxError : " + settings.url);
		});
		$(document).on('submit','form',function(){
			$("#overlayLoading").css("display", "block");
		});
		$("a#showOverlay").on( "click", function() {
			$("#overlayLoading").css("display", "block");
		});

		function isNumberKey(evt)
		{
		   var charCode = (evt.which) ? evt.which : event.keyCode
		   if (charCode > 31 && (charCode < 48 || charCode > 57))
		      return false;
		
		   return true;
		}

		jQuery(function ($) {
		    $(".sidebar-dropdown > a").click(function () {
		        $(".sidebar-submenu").slideUp(200);
		        if ($(this).parent().hasClass("active")) {
		            $(".sidebar-dropdown").removeClass("active");
		            $(this).parent().removeClass("active");
		        } else {
		            $(".sidebar-dropdown").removeClass("active");
		            $(this).next(".sidebar-submenu").slideDown(200);
		            $(this).parent().addClass("active");
		        }

		    });

		    $("#toggle-sidebar").click(function () {
		        $(".page-wrapper").toggleClass("toggled");
		    });
		});
		</script>
        
    </body>
</html>