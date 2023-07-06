<%@page import="com.foodary.vo.DietVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
	}
	
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

<div class="dietContent_title">
   <b><i class="bi bi-cup-straw"></i>식단 기록</b>
</div>
<div class="diet">
<form class="m-3" action="foodUpdateOK.jsp" method="post">
<c:set var="list" value="${userFoodList.list}"/>
<c:forEach var="uvo" items="${list}">
<table width="1500" align="center" border="1" cellpadding="10" cellspacing="0">
	<!-- 1 -->
	<tr>
		<th colspan="2">
			<label for="ateDate">일시</label>
		</th>
		<th colspan="8">
			<input type="text" name="dietWriteDate" value="${uvo.userFoodDate}" style="width: 48%; height: 90%;" readonly="readonly"/>
        	 <input type="text" name="dietWriteTime" value="${uvo.userFoodTime}" style="width: 48%; height: 90%;" readonly="readonly"/>
		</th>
	</tr>
	<!-- 2 -->
	<tr>
		<th>먹은 음식</th>
		<td align="center">
			<input type="text" name="dietFoodName" value="${uvo.userFoodName}" style="width: 95%; height: 50%;" readonly="readonly"/>		
		</td>
		<th>칼로리</th>
		<td align="center">
			<input type="text" name="dietKcal" value="${uvo.userKcal}" style="width: 95%; height: 50%;" readonly="readonly"/>		
		</td>
		<th>탄수화물</th>
		<td align="center">
			<input type="text" name="dietCarbs" value="${uvo.userCarbs}" style="width: 95%; height: 50%;" readonly="readonly"/>	
		</td>
		<th>단백질</th>
		<td align="center">
			<input type="text" name="dietProtein" value="${uvo.userProtein}" style="width: 95%; height: 50%;" readonly="readonly"/>	
		</td>
		<th>지방</th>
		<td align="center">
			<input type="text" name="dietFat" value="${uvo.userFat}" style="width: 95%; height: 50%;" readonly="readonly"/>	
		</td>
	</tr>
	</c:forEach>
	<c:set var="list" value="${dietList.list}"/>
	<c:forEach var="dvo" items="${list}">
	<!-- 3 -->
	<tr>
		<th colspan="2">메모</th>
		<th colspan="8">
			<textarea 
				rows="20" 
				name="dietMemo" 
				style="resize: none; width: 97%; height: 90%; vertical-align: middle;"
				readonly="readonly"
				>${dvo.dietMemo}</textarea>
		</th>
	</tr>
	<!-- 4 -->
	<tr>
		<th colspan="2">사진</th>
		<td colspan="7">
			<input type="file" value="사진 업로드" style="margin-left: 20px;"/>
		</td>
		<th style="width: 150px;">
			<input type="button" value="업로드 완료!" style="width: 100px; height: 30px;" onclick=""/>			
		</th>
	</tr>
		
</table>
</c:forEach>
</form>
</div>
</body>
</html>
