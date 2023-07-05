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
		
	
//	DietService.getInstance().insert(dietvo);

//	int year_list = LocalDate.now().getYear();
//	int month_list = LocalDate.now().getMonthValue();
//	int day_list = LocalDate.now().getDayOfMonth();

/*
	int	year_list = Integer.parseInt(request.getParameter("sendYear"));
	int	month_list = Integer.parseInt(request.getParameter("sendMonth"));
	int	day_list = Integer.parseInt(request.getParameter("sendDay"));


	
	try {
		year_list = Integer.parseInt(request.getParameter("sendYear"));
		month_list = Integer.parseInt(request.getParameter("sendMonth"));
		day_list = Integer.parseInt(request.getParameter("sendDay"));
		
	}catch(NumberFormatException e) {
		
	}
*/
%>

<%
//	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
//	LocalDate localdate = LocalDate.parse(date);
//	Date dietWriteDate = java.sql.Date.valueOf(localdate);
			
//	String time = request.getParameter("dietWriteTime");
//	SimpleDateFormat format2 = new SimpleDateFormat("hh:mm");
//	LocalTime localtime = LocalTime.parse(time);
//	Time dietWriteTime = java.sql.Time.valueOf(localtime);


	request.setCharacterEncoding("UTF-8");
	String date = request.getParameter("dietWriteDate");
	String dietWriteTime = request.getParameter("dietWriteTime");
	out.println(date);
	DietList dietList = DietService.getInstance().selectDiet(date);
	out.println(dietList);

%>

<div class="content" style="position: relative;">
	<div class="calendar">
		<%@ include file="dietCalendar.jsp" %>
	</div>
	
	<div class="diet-table">
	<c:if test="<%= date != null %>">
		<h2><%=date%> 식단 목록</h2><br/><br/>
		<table width="400" border="1" align="center">
		 <c:set var="list" value="${dietList.list}"/>
			<tr>
				<th>${list}</th>
				<td>테스트</td>
			</tr>
	</c:if>
	<c:if test="<%= date == null %>">
		<h2> 식단 목록</h2><br/><br/>
		<table width="400" border="1" align="center">
			<%-- <c:set var="list" value="${DietList.list}"/>
	   		<c:forEach var="vo" items="${list}"> --%>
	   			<%--  <c:set var="vo" value="${DietVO.vo}"/> --%>
			<tr>
				<td>${vo}</td>
			</tr>
			<%-- </c:forEach> --%>
	</c:if>
			<%-- <tr>
				<th>시간2</th>
				<td>${dietList.}</td>
			</tr>
			<tr>
				<th>시간2</th>
				<td>식사 메뉴2</td>
			</tr> --%>
		</table><br/>
			<input type="button" value="목록 보기" style="width: 100px; height: 30px; position: absolute; right: 10px;"
				onclick="location.href='dietView.jsp'"/>
	</div>
</div>




</body>
</html>