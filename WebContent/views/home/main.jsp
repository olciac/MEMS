<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<title>Strona główna</title>
<tiles:insertDefinition name="master.page">
    <tiles:putAttribute name="body">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Strona główna
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-tachometer-alt"></i>  <a href="#">Strona główna</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-edit"></i> Informacje
                            </li>
                        </ol>
                    </div>
                </div>

			    <div class="row">
			        <div class="col-lg-12">
			        	<legend>Lista produktów</legend>
			            <div class="table-responsive">
			                <table class="table table-striped">
			                    <thead>
			                        <tr>
			                            <th scope="col"> </th>
			                            <th scope="col">Product</th>
			                            <th scope="col">Available</th>
			                            <th scope="col" class="text-center">Quantity</th>
			                            <th scope="col" class="text-right">Price</th>
			                            <th> </th>
			                        </tr>
			                    </thead>
			                    <tbody>
			                        <tr>
			                            <td><img src="https://dummyimage.com/50x50/55595c/fff" /> </td>
			                            <td>Boogie Down Bronze J215 Golden Sun</td>
			                            <td>In stock</td>
			                            <td><input class="form-control" type="text" value="1" /></td>
			                            <td class="text-right">124,90 €</td>
			                            <td class="text-right"><button class="btn btn-sm btn-danger"><i class="fa fa-trash"></i> </button> </td>
			                        </tr>
			                        <tr>
			                            <td><img src="https://dummyimage.com/50x50/55595c/fff" /> </td>
			                            <td>AMC Pure Pigment</td>
			                            <td>In stock</td>
			                            <td><input class="form-control" type="text" value="1" /></td>
			                            <td class="text-right">33,90 €</td>
			                            <td class="text-right"><button class="btn btn-sm btn-danger"><i class="fa fa-trash"></i> </button> </td>
			                        </tr>
			                        <tr>
			                            <td><img src="https://dummyimage.com/50x50/55595c/fff" /> </td>
			                            <td>Duraline</td>
			                            <td>In stock</td>
			                            <td><input class="form-control" type="text" value="1" /></td>
			                            <td class="text-right">70,00 €</td>
			                            <td class="text-right"><button class="btn btn-sm btn-danger"><i class="fa fa-trash"></i> </button> </td>
			                        </tr>
			                    </tbody>
			                </table>
			            </div>
			            
			        </div>
			    </div>

    </tiles:putAttribute>
</tiles:insertDefinition>