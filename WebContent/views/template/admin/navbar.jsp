<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div id="accordion">
	<div class="panel panel-default">
	    <div class="panel-heading">
	        <h4 class="panel-title">
	            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon glyphicon-user">
	            </span>ACL- użytkownicy</a>
	        </h4>
	    </div>
	    <div id="collapseOne" class="panel-collapse collapse">
	        <div class="panel-body">
	            <table class="table">
	                <tr>
	                    <td>
	                        <span class="glyphicon glyphicon-list text-info"></span><a href="<c:url value="/ACLManager/userlist" />">Lista użytkowników</a>
	                    </td>
	                </tr>
	            </table>
	        </div>
	    </div>
	</div>
	
	<div class="panel panel-default">
	    <div class="panel-heading">
	        <h4 class="panel-title">
	            <a data-toggle="collapse" data-parent="#accordion" href="#collapse1"><span class="glyphicon glyphicon glyphicon-user">
	            </span>Klienci</a>
	        </h4>
	    </div>
	    <div id="collapse1" class="panel-collapse collapse">
	        <div class="panel-body">
	            <table class="table">
	                <tr>
	                    <td>
	                        <span class="glyphicon glyphicon-list text-info"></span><a href="<c:url value="/ClientManager/clientlist" />">Lista klientów</a>
	                    </td>
	                </tr>
	            </table>
	        </div>
	    </div>
	</div>
	
	
	<div class="panel panel-default">
	    <div class="panel-heading">
	        <h4 class="panel-title">
	            <a data-toggle="collapse" data-parent="#accordion" href="#collapse2"><span class="glyphicon glyphicon glyphicon-filter">
	            </span>Laboratoria</a>
	        </h4>
	    </div>
	    <div id="collapse2" class="panel-collapse collapse">
	        <div class="panel-body">
	            <table class="table">
	                <tr>
	                    <td>
	                        <span class="glyphicon glyphicon-list text-info"></span><a href="<c:url value="/labManager/labslist" />">Lista laboratoriów</a>
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
	            </span>Gospodarka magazynowa</a>
	        </h4>
	    </div>
	    <div id="collapse3" class="panel-collapse collapse">
	        <div class="panel-body">
	            <table class="table">
	                <tr>
	                    <td>
	                        <span class="glyphicon glyphicon-list text-info"></span><a href="<c:url value="/warehouseManager/viewProductGroups" />">Lista grup produktów</a>
	                    </td>
	                </tr>
	                <tr>
	                    <td>
							<span class="glyphicon glyphicon-list text-info"></span><a href="<c:url value="/warehouseManager/viewProducts" />">Lista produktów</a>
	                    </td>
	                </tr>
	                <tr>
	                    <td>
							<span class="glyphicon glyphicon-list text-info"></span><a href="<c:url value="/warehouseManager/viewKindWareDocs" />">Lista rodzajów dok. mag.</a>
	                    </td>
	                </tr>
	                <tr>
	                    <td>
							<span class="glyphicon glyphicon-list text-info"></span><a href="<c:url value="/warehouseManager/viewSuppliers" />">Lista dostawców</a>
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
	                <tr>
	                    <td>
	                        <span class=" glyphicon glyphicon-folder-open text-info"></span><a href="<c:url value="/emailSender/templates" />">Szablony</a>
	                    </td>
	                </tr>
	            </table>
	        </div>
	    </div>
	</div>
	
	<div class="panel panel-default">
	    <div class="panel-heading">
	        <h4 class="panel-title">
	            <a data-toggle="collapse" data-parent="#accordion" href="#collapse5"><span class="glyphicon glyphicon-cog">
	            </span>Ustawienia modułów laboratorium</a>
	        </h4>
	    </div>
	    <div id="collapse5" class="panel-collapse collapse">
	        <div class="panel-body">
	            <table class="table">
	                <tr>
	                    <td>
	                        <span class="glyphicon glyphicon-list text-info"></span><a href="<c:url value="/sampleTypes/list" />">Lista typów próbek</a>
	                    </td>
	                </tr>
	                <tr>
	                    <td>
	                        <span class="glyphicon glyphicon-list text-info"></span><a href="<c:url value="/samplePoint/viewList" />">Lista punktów pobrań</a>
	                    </td>
	                </tr>
                	<tr>
	                    <td>
	                        <span class="glyphicon glyphicon-list text-info"></span><a href="<c:url value="/analysisManager/viewAnalysisRequestList" />">Lista zleceń analiz</a>
	                    </td>
	                </tr>
                    <tr>
	                    <td>
	                        <span class="glyphicon glyphicon-list text-info"></span><a href="<c:url value="/documentManager/viewDocumentReferences" />">Lista odniesienień do dokumentów</a>
	                    </td>
	                </tr>
	                 <tr>
	                    <td>
	                        <span class="glyphicon glyphicon-list text-info"></span><a href="<c:url value="/customProductManager/viewCustomProduct" />">Lista własnych produktów</a>
	                    </td>
	                </tr>
	            </table>
	        </div>
	    </div>
	</div>
	
	<div class="panel panel-default">
	    <div class="panel-heading">
	        <h4 class="panel-title">
	            <a data-toggle="collapse" data-parent="#accordion" href="#collapse6"><span class="glyphicon glyphicon-cog">
	            </span>Ustawienia metod badań</a>
	        </h4>
	    </div>
	    <div id="collapse6" class="panel-collapse collapse">
	        <div class="panel-body">
	            <table class="table">
	                <tr>
	                    <td>
	                        <span class="glyphicon glyphicon-list text-info"></span><a href="<c:url value="/methodsManager/viewMethodCategoryList" />">Lista kategorii metod</a>
	                    </td>
	                </tr>
	                <tr>
	                    <td>
	                        <span class="glyphicon glyphicon-list text-info"></span><a href="<c:url value="/methodsManager/viewMethodList" />">Lista badań zadeklarowanych</a>
	                    </td>
	                </tr>
	               	<tr>
	                    <td>
	                        <span class="glyphicon glyphicon-list text-info"></span><a href="<c:url value="/methodsManager/viewMethodDefinedList" />">Lista badań zdefiniowanych</a>
	                    </td>
	                </tr>
	            </table>
	        </div>
	    </div>
	</div>
	
	<div class="panel panel-default">
	    <div class="panel-heading">
	        <h4 class="panel-title">
	            <a data-toggle="collapse" data-parent="#accordion" href="#collapse7"><span class="glyphicon glyphicon-cog">
	            </span>Ustawienia parametrów</a>
	        </h4>
	    </div>
	    <div id="collapse7" class="panel-collapse collapse">
	        <div class="panel-body">
	            <table class="table">
	                <tr>
	                    <td>
	                        <span class="glyphicon glyphicon-list text-info"></span><a href="<c:url value="/param/viewList" />">Lista parametrów</a>
	                    </td>
	                </tr>
	            </table>
	        </div>
	    </div>
	</div>
	
</div>