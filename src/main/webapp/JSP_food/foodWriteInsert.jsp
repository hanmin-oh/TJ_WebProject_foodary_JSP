<%@page import="com.foodary.service.UserFoodService"%>
<%@page import="com.foodary.vo.UserFoodList"%>
<%@page import="com.foodary.vo.FoodList"%>
<%@page import="com.foodary.service.FoodService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.foodary.vo.DietList"%>
<%@page import="com.foodary.service.DietService"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>음식목록</title>
<!-- bootstrap -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="./js/foodWrite.js" defer="defer"></script> 
<style>
	.dietContent_title {
		float: left;
		width: 100%;
		height: 100px;
		line-height: 100px;
		text-align: center;
		background-color: #dedede;
		font-size: 35px;
	}

	table {
		margin: 0 auto;
	}" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
	
	td, th {
		height: 50px;
		border: 1px solid black;
	}


</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="vo" class="com.foodary.vo.UserFoodVO">
	<jsp:setProperty property="*" name="vo"/>
</jsp:useBean>
<%
/* 	String[] foodNames = (String[]) session.getAttribute("foodNames");
	String[] kcals = (String[]) session.getAttribute("kcals");
	String[] carbs = (String[]) session.getAttribute("carbs");
	String[] proteins = (String[]) session.getAttribute("proteins");
	String[] fats = (String[]) session.getAttribute("fats");
	
	session.setAttribute("foodNames", foodNames);
	session.setAttribute("kcals", kcals);
	session.setAttribute("carbs", carbs);
	session.setAttribute("proteins", proteins);
	session.setAttribute("fats", fats); */
	
	out.println(vo);
	out.println(vo.getuserFoodName());
	UserFoodService.getInstance().insertFood(vo);
	UserFoodList userFoodList = UserFoodService.getInstance().userSelectList(vo);
	out.println(vo);
	request.setAttribute("userFoodList", userFoodList);
	pageContext.forward("foodWrite.jsp");
%>
</body>
</html>
