<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<title>Lista użytkowników</title>
<tiles:insertDefinition name="master.pageAdmin">
    <tiles:putAttribute name="body">

	<legend>Lista użytkowników</legend>
	
	<c:if test="${not empty success}">
	   <div class="alert alert-success alert-dismissable">
	   		<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    		<strong> ${success} </strong>
		</div>
	</c:if>
	
	<a href="<c:url value="/UserManager/adduser" />" class="btn btn-md btn-primary" ><i class="fa fa-plus-square" aria-hidden="true"></i>  DODAJ UŻYTKOWNIKA</a><br><br>
	
	<div class="generic-container">

		  	<br>
			<table id="userListTable" class="table table-hover">
	    		<thead>
		      		<tr>
				        <th>Imię</th>
				        <th>Nazwisko</th>
				        <th>Email</th>
				        <th>Login</th>
				        <th>Status</th>
				        <th width="100px"></th>
				        <th width="100px"></th>
					</tr>
		    	</thead>
	    		<tbody>
					<tr>
						<td>Jan</td>
						<td>Kowalski</td>
						<td>jkowal@mems.pl</td>
						<td>jkowalski</td>
						<td>Aktywny</td>
					    <td><a href="<c:url value='/UserManager/edit-user-1' />" class="btn btn-success custom-width">edytuj</a></td>
				        <td><a href="<c:url value='/UserManager/delete-user-2' />" class="btn btn-danger custom-width" data-toggle="confirmation" data-title="Usunąć?">usuń</a></td>
					</tr>
	    		</tbody>
	    	</table>
   	</div>
				
    </tiles:putAttribute>
</tiles:insertDefinition>

<script type="text/javascript">
	var table = $('#userListTable').DataTable( {
	    responsive: true,
	    buttons: [ 'copy', 'excel', 'pdf', 'colvis',{extend:'print',exportOptions: {columns: ':visible'}} ]
	} );
	
	table.buttons().container().prependTo( '#userListTable_filter' );
</script>