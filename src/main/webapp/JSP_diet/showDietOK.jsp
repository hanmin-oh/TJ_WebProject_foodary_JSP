<%@page import="com.foodary.vo.DietVO"%>
<%@page import="com.foodary.vo.DietList"%>
<%@page import="com.foodary.service.DietService"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");
	String dietWriteDate = request.getParameter("dietWriteDate");
	String dietWriteTime = request.getParameter("dietWriteTime");
	
//	out.println(dietWriteDate + ", " + dietWriteTime);
	DietService service = DietService.getInstance();
	
//	1페이지 분량의 메인글을 얻어온다.
	DietList dietList = service.selectDietList(dietWriteDate);
	out.println(dietList);

//	공지글과 메인글의 목록을 request 영역에 저장해서 메인글을 화면에 표시하는 페이지(listView.jsp)로 넘겨준다.
	request.setAttribute("dietList", dietList);
//	request.setAttribute("currentPage", currentPage);
	pageContext.forward("showDiet.jsp");
	
%>

</body>
</html>