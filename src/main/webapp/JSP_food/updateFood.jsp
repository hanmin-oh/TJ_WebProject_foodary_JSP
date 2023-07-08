<%@page import="com.foodary.service.UserFoodService"%>
<%@page import="com.foodary.vo.UserFoodVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="uvo" class="com.foodary.vo.UserFoodVO">
   <jsp:setProperty property="*" name="uvo"/>
</jsp:useBean>

<%
   request.setCharacterEncoding("UTF-8");
   
//   String userFoodDate = request.getParameter("userFoodDate");
//   String userFoodTime = request.getParameter("userFoodTime");
//   out.println(userFoodDate);
//   out.println(userFoodTime);
//   UserFoodVO userfoodvo = new UserFoodVO();
//   userfoodvo.setuserFoodDate(userFoodDate);
//   userfoodvo.setuserFoodTime(userFoodTime);
   
   UserFoodService.getInstance().UpdateUserFoodList(uvo);
   
   
   

%>
</body>
</html>