<%@page import="com.foodary.vo.DietList"%>
<%@page import="com.foodary.service.UserFoodService"%>
<%@page import="com.foodary.service.DietService"%>
<%@page import="com.foodary.vo.UserFoodVO"%>
<%@page import="com.foodary.vo.DietVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<%
	request.setCharacterEncoding("UTF-8");

//	out.println(dietWriteDate);
//	out.println(dietWriteTime);
	
	DietVO dietvo = new DietVO();
	int idx = Integer.parseInt(request.getParameter("idx"));
	String dietWriteDate = request.getParameter("dietWriteDate");
	String dietWriteTime = request.getParameter("dietWriteTime");
	
	out.println(idx);
	dietvo.setIdx(idx);
	
	out.println("<script>");
	DietService.getInstance().deleteDietList(idx);
	out.println("alert('삭제 갈김')");
	out.println("location.href='/foodary/JSP_diet/dietList.jsp?dietWriteDate="+ dietWriteDate + "&dietWriteTime=" + dietWriteTime + "'");
	out.println("</script>");
	
	
%>

</body>
</html>