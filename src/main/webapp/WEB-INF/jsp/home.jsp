<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<title>PSI System</title>
	
	<link href="/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="/css/psi.css" rel="stylesheet" type="text/css"/>
	<script type="text/javascript" src="/js/jquery-3.6.0.js"></script>
	<script type="text/javascript" src="/js/all.js"></script> <!--load all styles for fond awesome -->
	<script type="text/javascript" src="/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container" style="padding-top: 30px;">
	  <div class="row">
		  <div class="col-md-2">&nbsp;</div>
		  <div class="col">
			  <div class="jumbotron">
			    <h2>Invoicing Management System</h2>      
			    <p>Integration of purchases, sales and inventory management.</p>
			  </div>
		  </div>
		  <div class="col-md-2">&nbsp;</div>
	  </div>
	</div>
	
	<div style="width: 70%">
		<div class="container">
			<div class="row col-md-6 mx-auto" style="margin:3%">
				<a class="btn btn-primary" href="/info" role="button">基本資料</a>
			</div>
			<div class="row col-md-6 mx-auto" style="margin:3%">
				<a class="btn btn-primary" href="/stock-accounting" role="button">庫存及帳務查詢</a>
			</div>
			<div class="row col-md-6 mx-auto" style="margin:3%">
				<a class="btn btn-primary" href="/logistic" role="button">物流追蹤</a>
			</div>
			<div class="row col-md-6 mx-auto" style="margin:3%">
				<a class="btn btn-primary" href="/balance" role="button">沖帳</a>
			</div>
			<div class="row col-md-6 mx-auto" style="margin:3%">
				<a class="btn btn-primary" href="receipt" role="button">發票開立</a>
			</div>
		</div>
	</div>
	
	<div>
		<img id="backgroungImg" class="bottomRight" src="/images/factory.jpeg" />
	</div>
</body>
</html>