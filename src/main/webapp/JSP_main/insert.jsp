<%@page import="java.util.Calendar"%>
<%@page import="com.foodary.vo.UserRegisterVO"%>
<%@page import="com.foodary.calendar.FoodaryCalendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판 쓰기</title>
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="css/mainCss.css"/>
<script type="text/javascript" src="js/jquery-3.7.0.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script defer type="text/javascript" src="./js/mainFunction.js"></script>
</head>
<body>
<!-- 헤더 영역 -->
<header>
	<jsp:include page="./headerAfter.jsp"></jsp:include>
</header>
<!-- 중간영역 -->
<form class="m-3" action="insertOK.jsp" method="post">
	<table class="table" style="width: 700px; margin-left: auto; margin-right: auto; vertical-align: middle;">
		<tr class="table-primary">
			<th colspan="3" style="font-size: 30px; text-align: center;">자유게시판 쓰기</th>
		</tr>
		<!-- 이름입력 -->
		<tr>
			<th width="100">
				<label for="name">이름</label>
			</th>
			<td width="500">
				<input 
					id="name" 
					class="form-control form-control-sm" 
					type="text" 
					name="name"
					value="${rvo.username}"
					style="width: 200px;" readonly="readonly"/>
			</td>
			<!-- 공지여부 -->
			<th width="100" style="text-align: center;">
				공지글 <input class="form-check-input" type="checkbox" name="notice"/>
			</th>
		</tr>
		<!-- hidden으로 id넘기기 -->
		<input id="id" type="hidden" name="id" value="${rvo.id}" style="width: 200px;"/>
		<tr>
			<th>
				<label for="subject">제목</label>
			</th>
			<td colspan="2">
				<input id="subject" class="form-control form-control-sm" type="text" name="subject"/>
			</td>
		</tr>
		<tr>
			<th>
				<label for="content">내용</label>
			</th>
			<td colspan="2">
				<textarea 
					id="content" 
					class="form-control form-control-sm" 
					rows="10" 
					name="content"
					style="resize: none;"></textarea>
			</td>
		</tr>
		<tr>
			<th>
				식단 불러오기
			</th>
			<td colspan="2">
<%
	Calendar calendar = Calendar.getInstance();
	int year = calendar.get(Calendar.YEAR);
	int month = calendar.get(Calendar.MONTH) + 1;
	int day = calendar.get(Calendar.DATE);

	try {
		year = Integer.parseInt(request.getParameter("year"));
		month = Integer.parseInt(request.getParameter("month"));
		day = 1;
		if(month >= 13) {
			year++;
			month = 1;
		}else if(month <= 0) {
			year--;
			month = 12;
		}
	}	catch(NumberFormatException e) {
		
	}


%>
					<fieldset style="display: inline;">
						<select class="select" name="year">
<%
for(int i=1900; i<=2100; i++) {
	if(calendar.get(Calendar.YEAR) == i) {
		out.println("<option selected='selected'>" + i + "</option>");					
	}else {
		out.println("<option>" + i + "</option>");							
	}
}
%>						
						</select> 년 
					</fieldset>
					&nbsp;&nbsp;
					<fieldset style="display: inline;">
						<select class="select" name="month">
<%
				for(int i=1; i<=12; i++) {
					if(calendar.get(Calendar.MONTH) + 1 == i) {
						out.println("<option selected='selected'>" + i + "</option>");	
					}else {
						out.println("<option>" + i + "</option>");					
					}
				}
%>							
						</select> 월
					</fieldset>
					&nbsp;&nbsp;
					<fieldset style="display: inline;">
						<select class="select" name="month">
<%
				for(int i=1; i<=31; i++) {
						out.println("<option>" + i + "</option>");					
				}
%>							
						</select> 일
					</fieldset>
					&nbsp;&nbsp;
			<input class="select" type="submit" value="불러오기" onclick="getDiet()"/>
			</td>
		</tr>
		<tr>
			<th>
				<label for="subject">사진 첨부</label>
			</th>
			<td colspan="2" style="font-size: 12pt; font-family: 'GangwonEduSaeeum_OTFMediumA';">
					<!-- <input type="file" name="picture" value="파일 선택" style="display: inline;"/>
					<input type="submit" value="파일 전송" style="display: inline;" onclick="location'href=./fileUploadOK.jsp'"/> -->
			</td>
		</tr>
		<tr>
			<td colspan="3" align="center">
				<input 
					class="btn btn-outline-primary btn-sm" 
					type="submit" 
					value="저장하기" 
					style="font-size: 13px;"/>
				<input 
					class="btn btn-outline-danger btn-sm" 
					type="reset" 
					value="다시쓰기" 
					style="font-size: 13px;"/>
				<input 
					class="btn btn-outline-success btn-sm" 
					type="button" 
					value="돌아가기" 
					style="font-size: 13px;"
					onclick="history.back()"/>
			</td>
		</tr>
	</table>
	<!-- 작성자 ip 주소는 hidden으로 insertOK.jsp로 넘긴다. -->
	<input type="hidden" name="ip" value="${pageContext.request.remoteAddr}">
</form>
<!-- Footer 영역 -->
<footer>
	<jsp:include page="./footerAfter.jsp"></jsp:include>
</footer>
</body>
</html>














