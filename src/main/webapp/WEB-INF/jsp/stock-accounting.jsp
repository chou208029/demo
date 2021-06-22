<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Inventory and Accounting</title>
	
	<link href="/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="/css/psi.css" rel="stylesheet" type="text/css"/>
	<script type="text/javascript" src="/js/jquery-3.6.0.js"></script>
	<script type="text/javascript" src="/js/all.js"></script> <!--load all styles for fond awesome -->
	<script type="text/javascript" src="/js/bootstrap.min.js"></script>
</head>

<script type="text/javascript">
	$(function () {
		$("#backward").click(function(){
			console.log('click back button');
			history.go(-1);
		});
		
		$("#home").click(function(){
			location.href = '/home';
		});
	});
</script>

<body>

	<div class="container" style="padding-top: 30px; padding-bottom: 5px;">
	  <div class="row align-items-end">
	    <div class="col-md-2">
	    	<button id="home" name="home" class="btn btn-secondary"><i class="fa fa-home"></i>  Home</button>
	    </div>
	    <div class="col">
	    	<div class="jumbotron">
			    <h2>Invoicing Management System</h2>      
			    <p>Integration of purchases, sales and inventory management.</p>
			</div>
	    </div>
	    <div class="col-md-2">
	    	<button id="backward" name="backward" class="btn btn-secondary"><i class="fa fa-arrow-circle-left"></i>  Previous</button>
	  	</div>
	  </div>
	</div>
	
	<div class="container">
		<nav aria-label="breadcrumb">
		  <ol class="breadcrumb">
		    <li class="breadcrumb-item"><a href="/home">Home</a></li>
		    <li class="breadcrumb-item" aria-current="page">Inventory and Accounting</li>
		  </ol>
		</nav>
	
	
	<ul class="nav nav-tabs" id="myTab" role="tablist">
	  <li class="nav-item" role="presentation">
	    <button class="nav-link active" id="invetory-tab" data-bs-toggle="tab" data-bs-target="#inventory" type="button" role="tab" aria-controls="inventory" aria-selected="true">Inventory</button>
	  </li>
	  <li class="nav-item" role="presentation">
	    <button class="nav-link" id="accounting-tab" data-bs-toggle="tab" data-bs-target="#accounting" type="button" role="tab" aria-controls="accounting" aria-selected="false">Accounting</button>
	  </li>
	</ul>
	
	<div class="tab-content" id="myTabContent">
	  <div class="tab-pane fade show active" id="inventory" role="tabpanel" aria-labelledby="inventory-tab">
	  	<div class="container">
	        <table class="table table-striped">
	            <thead>
	                <tr>
	                	<th>Product Code</th>
	                    <th>Product Name</th>
	                    <th>Expiration Date</th>
	                    <th>Verification Sheet</th>
	                    <th>Specification</th>
	                    <th>Quantity</th>
	                    <th>Unit</th>
	                    
	                </tr>
	            </thead>
	            <tbody>
	            <c:forEach var="i" begin="1" end="5">
	                    <tr>
	                    	<td>D01</td>
	                        <td>Orange Juice</td>
	                        <td>31/12/2021</td>
	                        <td>DX123456789</td>
							<td>300 ml</td>
	                        <td>100</td>
	                        <td>Box</td>
	                    </tr>
	             </c:forEach>
	            </tbody>
	        </table>
	    </div>
	  </div>
	  <div class="tab-pane fade" id="accounting" role="tabpanel" aria-labelledby="accounting-tab">
	  	<div class="container">
	        <table class="table table-striped">
	            <thead>
	                <tr>
	                	<th>Product Code</th>
	                    <th>Product Name</th>
	                    <th>Target Date</th>
	                    <th>Verification Sheet</th>
	                    <th>Specification</th>
	                    <th>Purchase</th>
	                    <th>Sale</th>
	                    <th>Unit</th>
	                    
	                </tr>
	            </thead>
	            <tbody>
	            <c:forEach var="i" begin="1" end="5">
	                    <tr>
	                    	<td>D01</td>
	                        <td>Orange Juice</td>
	                        <td>10/1/2021</td>
	                        <td>DX123456789</td>
							<td>300 ml</td>
	                        <td>100</td>
	                        <td></td>
	                        <td>Box</td>
	                    </tr>
	             </c:forEach>
	            </tbody>
	        </table>
	    </div>
	  </div>
	</div>
	</div>
    <div>
		<img id="backgroungImg" class="bottomRight" src="/images/factory.jpeg" />
	</div>

</body>
</html>