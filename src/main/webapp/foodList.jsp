<%@page import="com.foodary.vo.FoodList"%>
<%@page import="com.foodary.vo.FoodVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.foodary.service.FoodService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>음식 넣기</title>
<style type="text/css">

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
	}
	
	td, th {
		height: 50px;
	}

</style>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");
//	이전 페이지에서 넘어오는 화면에 표시할 페이지 번호를 받는다.
	int currentPage = 1;
	try {
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
	} catch (NumberFormatException e) {
		
	}

	FoodService service = FoodService.getInstance();
	
//	1페이지 분량의 메인글을 얻어온다.
	FoodList foodList = service.selectList(currentPage);


//	공지글과 메인글의 목록을 request 영역에 저장해서 메인글을 화면에 표시하는 페이지(listView.jsp)로 넘겨준다.
	request.setAttribute("foodList", foodList);
	request.setAttribute("currentPage", currentPage);
	pageContext.forward("foodListView.jsp");
	out.println(foodList);
	out.println("currentPage: " + currentPage);
%>

</body>
</html>