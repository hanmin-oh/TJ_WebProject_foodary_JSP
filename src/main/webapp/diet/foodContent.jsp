<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>식단 보기</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<style>
	
	* {
		padding: 0;
		margin: 0;
	}
	
	.foodContent {
		float: left;
		width: 100%;
		background-color: #e3e3e3;
	}
	
	.foodContent_title {
		float: left;
		width: 100%;
		height: 100px;
		line-height: 100px;
		text-align: center;
		background-color: #dedede;
		font-size: 35px;
	}
	.contentwrap {
		float: left;
		width: 100%;
		height: 700px;
		display: flex;
	}
	
	.foodCalendar {
		float: left;
		width: 800px;
		height: 700px;
		background-color: #e7e7e7;
	}
	
	.foodList {
		float: left;
		width: calc(100%-800px);
		height: 700px;
	}
	
</style>
</head>
<body>

<div class="foodContent">
	<div class="foodContent_title">
		<b><i class="bi bi-cup-straw"></i>식단 보기</b>
	</div>
	<div class="contentwrap">
		<div class="foodCalendar" align="center">
			<%@ include file="foodCalendar2.jsp" %>
		</div>
		
		<div class="foodList">
			<%@ include file="foodList2.jsp" %>		
		</div>	
	</div>
</div>

</body>
</html>