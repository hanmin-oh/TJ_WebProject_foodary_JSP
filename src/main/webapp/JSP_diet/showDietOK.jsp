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
	
//	1������ �з��� ���α��� ���´�.
	DietList dietList = service.selectDietList(dietWriteDate);
	out.println(dietList);

//	�����۰� ���α��� ����� request ������ �����ؼ� ���α��� ȭ�鿡 ǥ���ϴ� ������(listView.jsp)�� �Ѱ��ش�.
	request.setAttribute("dietList", dietList);
//	request.setAttribute("currentPage", currentPage);
	pageContext.forward("showDiet.jsp");
	
%>

</body>
</html>