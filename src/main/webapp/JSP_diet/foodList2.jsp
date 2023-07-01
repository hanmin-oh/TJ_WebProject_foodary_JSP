<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>식단 목록</title>
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<!-- <script type="text/javascript" src="html2canvas.hertzen.com_dist_html2canvas"></script> -->
<style>

	h2 {
		margin-left: 20px;
		margin-top: 20px;
		
	}
	
	.diet-table {
		position: relative;
	}

</style>
<script src="./js/foodCalendar2.js"></script>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");
	
	int year_list = Calendar.getInstance().get(Calendar.YEAR);
	int month_list = Calendar.getInstance().get(Calendar.MONTH) + 1;
	int day_list = Calendar.getInstance().get(Calendar.DATE);
//	out.println(year_list + ", " + month_list + ", " + day_list);
	
	try {
		year_list = Integer.parseInt(request.getParameter("year"));
		month_list = Integer.parseInt(request.getParameter("month"));
		day_list = Integer.parseInt(request.getParameter("day"));
		
	}catch(NumberFormatException e) {
		
	}
	
%>

<div class="diet-table">
<!-- 달력에서 선택한 날짜가 들어와야 한다. -->
<h2><%=year_list%>-<%=month_list%>-<%=day_list%> 식단 목록</h2><br/><br/>
<%
	
%>
<table width="500" border="1" align="center">
	<tr>
		<th>시간1</th>
		<td>식사 메뉴1</td>
	</tr>
	
	<tr>
		<th>시간2</th>
		<td>식사 메뉴2</td>
	</tr>
</table><br/>
<input type="button" value="목록 보기" style="width: 100px; height: 30px; position: absolute; right: 0;"
	onclick="location.href='foodView.jsp'"/>
</div>

</body>
</html>