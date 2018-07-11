<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div id="accordion">
	<div class="panel panel-default">
	    <div class="panel-heading">
	        <h4 class="panel-title">
	            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon glyphicon-user">
	            </span>Użytkownicy</a>
	        </h4>
	    </div>
	    <div id="collapseOne" class="panel-collapse collapse">
	        <div class="panel-body">
	            <table class="table">
	                <tr>
	                    <td>
	                        <span class="glyphicon glyphicon-list text-info"></span><a href="<c:url value="/UserManager/userlist" />">Lista użytkowników</a>
	                    </td>
	                </tr>
	            </table>
	        </div>
	    </div>
	</div>
	
	<div class="panel panel-default">
	    <div class="panel-heading">
	        <h4 class="panel-title">
	            <a data-toggle="collapse" data-parent="#accordion" href="#collapse1"><span class="glyphicon glyphicon-home">
	            </span>Oddziały</a>
	        </h4>
	    </div>
	    <div id="collapse1" class="panel-collapse collapse">
	        <div class="panel-body">
	            <table class="table">
	                <tr>
	                    <td>
	                        <span class="glyphicon glyphicon-list text-info"></span><a href="<c:url value="/ClientManager/clientlist" />">Lista oddziałów</a>
	                    </td>
	                </tr>
	            </table>
	        </div>
	    </div>
	</div>
	
	<div class="panel panel-default">
	    <div class="panel-heading">
	        <h4 class="panel-title">
	            <a data-toggle="collapse" data-parent="#accordion" href="#collapse3"><span class="glyphicon glyphicon glyphicon-cog">
	            </span>Sprzęt medyczny</a>
	        </h4>
	    </div>
	    <div id="collapse3" class="panel-collapse collapse">
	        <div class="panel-body">
	            <table class="table">
	                <tr>
	                    <td>
	                        <span class="glyphicon glyphicon-list text-info"></span><a href="<c:url value="/warehouseManager/viewProductGroups" />">Lista sprzętu medycznego</a>
	                    </td>
	                </tr>
	                <tr>
	                    <td>
	                        <span class="glyphicon glyphicon-wrench text-info"></span><a href="<c:url value="/emailSender/settings" />">Terminy przeglądu</a>
	                    </td>
	                </tr>
	            </table>
	        </div>
	    </div>
	</div>
	
	<div class="panel panel-default">
	    <div class="panel-heading">
	        <h4 class="panel-title">
	            <a data-toggle="collapse" data-parent="#accordion" href="#collapse4"><span class="glyphicon glyphicon-envelope">
	            </span>Skrzynka pocztowa</a>
	        </h4>
	    </div>
	    <div id="collapse4" class="panel-collapse collapse">
	        <div class="panel-body">
	            <table class="table">
	                <tr>
	                    <td>
	                        <span class="glyphicon glyphicon-wrench text-info"></span><a href="<c:url value="/emailSender/settings" />">Konfiguracja</a>
	                    </td>
	                </tr>
	                <tr>
	                    <td>
	                        <span class="glyphicon glyphicon-send text-info"></span><a href="<c:url value="/emailSender/sendEmail" />">Wysyłanie email'i</a>
	                    </td>
	                </tr>
	            </table>
	        </div>
	    </div>
	</div>
	
</div>