<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Info</title>
	
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
		<nav aria-label="breadcrumb">
		  <ol class="breadcrumb">
		    <li class="breadcrumb-item"><a href="/home">Home</a></li>
		    <li class="breadcrumb-item" aria-current="page">Information</li>
		  </ol>
		</nav>
	</div>
	
	<div style="width: 70%">
		<div class="container">
			<div class="row col-md-6 mx-auto" style="margin:3%">
				<a class="btn btn-primary" href="/customer" role="button">客戶資料</a>
			</div>
			<div class="row col-md-6 mx-auto" style="margin:3%">
				<a class="btn btn-primary" href="vendor" role="button">廠商資料</a>
			</div>
			<div class="row col-md-6 mx-auto" style="margin:3%">
				<a class="btn btn-primary" href="/product" role="button">商品資料</a>
			</div>
		</div>
	</div>
	
	<div>
		<img id="backgroungImg" class="bottomRight" src="/images/factory.jpeg" />
	</div>
</body>
</html>