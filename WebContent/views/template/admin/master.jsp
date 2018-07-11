<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
   	<link href="<c:url value='/resources/css/layout-admin.css' />" rel="stylesheet"/>
    <link href="<c:url value='/resources/font-awesome/css/font-awesome.min.css' />" rel="stylesheet"/>
    <link href="<c:url value='/resources/css/bootstrap/bootstrap.css' />" rel="stylesheet"/>
    <link href="<c:url value='/resources/css/DataTables/datatables.css"' />" rel="stylesheet"/>
    <link href="<c:url value='/resources/css/DataTables/fixedHeader.bootstrap.min.css' />" rel="stylesheet"/>
    <link href="<c:url value='/resources/css/DataTables/responsive.bootstrap.min.css' />" rel="stylesheet"/>
	<link href="<c:url value='/resources/css/bootstrap/bootstrap-select.min.css' />" rel="stylesheet"/>
	<link href="<c:url value='/resources/js/TextEditor/summernote.css' />" rel="stylesheet"/>
	<link href="<c:url value='/resources/css/jquery-confirm.css' />" rel="stylesheet"/>
	<link href="<c:url value='/resources/css/bootstrap/bootstrap-datepicker.min.css' />" rel="stylesheet" type="text/css"/>
	<link href="<c:url value='/resources/css/jquery.datetimepicker.css' />" rel="stylesheet"/> 
	
    <script src="<c:url value='/resources/js/jquery-3.2.1.js' />"></script>
    <script src="<c:url value='/resources/js/bootstrap/bootstrap.js' />"></script>
	<script src="<c:url value='/resources/js/DataTables/datatables.js'/>" ></script>
    <script src="<c:url value='/resources/js/DataTables/dataTables.responsive.js' />"></script>
    <script src="<c:url value='/resources/js/DataTables/responsive.bootstrap.min.js' />"></script>
	<script src="<c:url value='/resources/js/bootstrap/bootstrap-select.min.js' />"></script>
	<script src="<c:url value='/resources/js/bootstrap/bootstrap-confirmation.min.js' />"></script>
	<script src="<c:url value='/resources/js/TextEditor/summernote.min.js' />"></script>
	<script src="<c:url value='/resources/js/jquery-confirm.js' />"></script>
	<script src="<c:url value='/resources/js/jquery.cookie.js' />"></script>
	<script src="<c:url value='/resources/js/DataTables/translate_polish.js' />"></script>
	<script src="<c:url value='/resources/js/bootstrap/bootstrap-datepicker.min.js' />" ></script>
	<script src="<c:url value='/resources/locales/bootstrap/bootstrap-datepicker.pl.min.js' />" ></script>
	<script src="<c:url value='/resources/js/jquery.datetimepicker.full.min.js' />"></script>

		
</head>
    <body>
		<tiles:insertAttribute name="headerAdmin" />
		<%@include file="../overlay.jsp" %>
		<div class="container">
			<div class="row">
				<div class="col-sm-3 col-md-3">
					<tiles:insertAttribute name="navbarAdmin" />
				</div>
				<div class="col-md-9">
					<div class="row">
						<tiles:insertAttribute name="body" />
					</div>
				</div>
       		</div>
       	</div>
       	
       	<script type="text/javascript">

		$('[data-toggle=confirmation]').confirmation({
			  rootSelector: '[data-toggle=confirmation]',
			  container:"body",
			  singleton: true,
			  popout: true,
			  btnOkLabel: "Tak",
			  btnCancelLabel: "Nie"
			});

        $(document).ready(function () {
            var last = $.cookie('activeAccordionGroup');
            if (last != null) {
                $("#accordion .panel-collapse").removeClass('in');
                $("#"+last).collapse("show");
                $.cookie('activeAccordionGroup', last);
            }
            $("#accordion").on('shown.bs.collapse', function(){
            	$.removeCookie('activeAccordionGroup');
             	var active = $("#accordion .in").attr('id');
                $.cookie('activeAccordionGroup', active);
             });
        });
        
		$(document).ajaxStart(function(){
		    $("#overlayLoading").css("display", "block");
		});

		$(document).ajaxComplete(function(){
		    $("#overlayLoading").css("display", "none");
		});
		$(document).ajaxError(function( event, request, settings ) {
	 	   $.alert({
			    title: 'Alert!',
			    content: "<li>Błąd: " + settings.url + "</li>",
			    type: 'red'
			});
		});
		$(document).on('submit','form',function(){
			$("#overlayLoading").css("display", "block");
		});
		</script>
       	
    </body>
</html>