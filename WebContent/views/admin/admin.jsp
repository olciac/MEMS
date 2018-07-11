<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<title>Admin page</title>
<tiles:insertDefinition name="master.pageAdmin">
    <tiles:putAttribute name="body">
	
	<legend>Narzędzia administracyjne aplikacji MEMS</legend>
    
    </tiles:putAttribute>
</tiles:insertDefinition>