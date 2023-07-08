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

<jsp:useBean id="dvo" class="com.foodary.vo.DietVO">
	<jsp:setProperty property="*" name="dvo"/>
</jsp:useBean>



<%
	request.setCharacterEncoding("UTF-8");

//	String dietWriteDate = request.getParameter("dietWriteDate");
//	String dietWriteTime = request.getParameter("dietWriteTime");
//	out.println(dietWriteDate);
//	out.println(dietWriteTime);
	
//	DietVO dietvo = new DietVO();
//	dietvo.setDietWriteDate(dietWriteDate);
//	dietvo.setDietWriteTime(dietWriteTime);
	out.println(dvo);
	//DietService.getInstance().UpdateDietList(dvo);
	
	
//	UserFoodVO userfoodvo = new UserFoodVO();
//	userfoodvo.setuserFoodDate(dietWriteDate);
//	userfoodvo.setuserFoodTime(dietWriteTime);
	
//	UserFoodService.getInstance().UpdateUserFoodList(userfoodvo);
	
	
%>

</body>
</html>