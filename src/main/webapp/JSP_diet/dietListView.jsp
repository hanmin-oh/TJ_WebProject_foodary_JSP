
<%@page import="com.foodary.vo.DietList"%>
<%@page import="java.sql.Time"%>
<%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDate"%>
<%@page import="com.foodary.vo.DietVO"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.foodary.service.DietService"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- jstl -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>식단 목록</title>
<!-- <script type="text/javascript" src="html2canvas.hertzen.com_dist_html2canvas"></script> -->
<style>

	h2 {
		margin-left: 20px;
		margin-top: 20px;
		
	}
	
	.content {
		float: left;
		width: 1300px;
	}
	
	.calendar {
		float: left;
		width: 800px;
		height: 800px;
		background-color: #e1e1e1;
	}
	
	.diet-table {
		float: left;
		width: 500px;
		height: 800px;
		background-color: #d2d2d2;
	}
	

</style>
</head>
<body>

<%

	request.setCharacterEncoding("UTF-8");
	String date = request.getParameter("dietWriteDate");
	String dietWriteTime = request.getParameter("dietWriteTime");

	DietList dietList = DietService.getInstance().selectDiet(date);
	pageContext.setAttribute("dietList", dietList);

%>

<div class="content" style="position: relative;">
	<div class="calendar">
		<jsp:include page="dietCalendar.jsp" />

	</div>
		<form action="showDietOK.jsp" method="post">
	<div class="diet-table">
		<h2><%=date%> 식단 목록</h2><br/><br/>
		<table width="400" border="1" align="center">
		<c:set var="list" value="${dietList.list}"/>
		<c:forEach var="dvo" items="${list}">
			<tr>
				<th>${dvo.dietWriteTime}</th>
				<td>${dvo.dietFoodName}</td>
			</tr>
			<input type="hidden" name="dietWriteDate" value="${dietVO.dietWriteDate}" />
			<input type="hidden" name="dietWriteTime" value="${dietVO.dietWriteTime}" />
		</c:forEach>
			</table><br/>
		<input type="submit" value="목록 보기"/>
		</div>
	</form>
</div>


</body>
</html>