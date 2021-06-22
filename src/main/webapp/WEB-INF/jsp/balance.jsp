<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Balance</title>
	
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

	<div class="container" style="padding-top: 30px;">
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
        <table class="table table-striped">
            <!-- <caption>Your todos are </caption> -->
            <thead>
                <tr>
                	<th>Product Code</th>
                    <th>Product Name</th>
                    <th>Description</th>
                    <th>Specification</th>
                    <th>Brand</th>
                    <th>Origin</th>
                    <th>Quantity</th>
                    <th>Unit</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="i" begin="1" end="5">
                    <tr>
                    	<td>D01</td>
                        <td>Orange Juice</td>
                        <td>Drink</td>
                        <td>300 ml</td>
                        <td>光泉</td>
                      	<td>Taiwan</td>
                      	<td><input type="number" min="0" max="999999"></td>
                        <td>
                        	<select id="selector" name="selector">
							    <option value="box">box</option>
							    <option value="bottle">bottle</option>
							</select>
                        </td>
                        <td>
	                        <a class="btn btn-primary" href="/balance/purchase">Purchase</a>&nbsp;&nbsp;
	                        <a class="btn btn-warning" href="/balabce/sale">Sale</a>
                        </td>
                    </tr>
             </c:forEach>
            </tbody>
        </table>
    </div>
    
    <div>
		<img id="backgroungImg" class="bottomRight" src="/images/factory.jpeg" />
	</div>

</body>
</html>