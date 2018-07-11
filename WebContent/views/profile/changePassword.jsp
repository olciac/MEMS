<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<tiles:insertDefinition name="master.page">
    <tiles:putAttribute name="body">
 	<div class="container-fluid">

	<div id="jumbotron">
		<center><h1>Zmień hasło</h1></center>
		<hr>
	</div>
	
	<div class="alert alert-danger" style="display: none;">
	  <strong>Hasła nie są zgodne.</strong> 
	</div>	
	
	<form:form action="${pageContext.request.contextPath}/profile/savePassword" class="form-horizontal" method="POST" onsubmit="return validate(this);">
	<fieldset>
	
	<div class="form-group">
	  <label class="col-md-4 control-label" for="password">Nowe hasło</label>
	  <div class="col-md-4">
	    <input id="password" name="password" placeholder="Nowe hasło" class="form-control input-md" required="true" type="password">
	  </div>
	</div>
	
	<div class="form-group">
	  <label class="col-md-4 control-label" for="confirmpassword">Powtórz hasło</label>
	  <div class="col-md-4">
	    <input id="confirmpassword" name="confirmpassword" placeholder="Powtórz hasło" class="form-control input-md" required="true" type="password">
	  </div>
	</div>
	
	<center>
	    <input type="submit" class="btn btn-primary btn-lg" value="Zapisz"/>
	</center>
	
	</fieldset>
	</form:form>

	</div>
	
<script type="text/javascript">

	function validate(form) {
	
	    var p1 = $('#password').val();
	    var p2 = $('#confirmpassword').val();
	    
	    if(p1 == p2) {
	    	return true;
	    }
	    else {
	    	$('.alert').show();
	        return false;
	    }
	}
</script>
	
    </tiles:putAttribute>
</tiles:insertDefinition>