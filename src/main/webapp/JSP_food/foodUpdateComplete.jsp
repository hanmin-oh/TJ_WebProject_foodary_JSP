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

<%-- <jsp:useBean id="dvo" class="com.foodary.vo.DietVO">
	<jsp:setProperty property="*" name="dvo"/>
</jsp:useBean>

 --%>

<%
	request.setCharacterEncoding("UTF-8");

//	out.println(dietWriteDate);
//	out.println(dietWriteTime);
	
	DietVO dietvo = new DietVO();
	int idx = Integer.parseInt(request.getParameter("idx"));
	String dietMemo = request.getParameter("dietMemo");
	String dietWriteDate = request.getParameter("dietWriteDate");
	String dietWriteTime = request.getParameter("dietWriteTime");
	
	
	out.println(idx);
	out.println(dietMemo);
	out.println(dietWriteDate);
	out.println(dietWriteTime);

	dietvo.setIdx(idx);
	dietvo.setDietMemo(dietMemo);
	dietvo.setDietWriteDate(dietWriteDate);
	dietvo.setDietWriteTime(dietWriteTime);
	
	DietService.getInstance().UpdateDietList(dietvo);
	
	
//	UserFoodVO userfoodvo = new UserFoodVO();
//	userfoodvo.setuserFoodDate(dietWriteDate);
//	userfoodvo.setuserFoodTime(dietWriteTime);
	
//	UserFoodService.getInstance().UpdateUserFoodList(userfoodvo);
	
	
%>

</body>
</html>