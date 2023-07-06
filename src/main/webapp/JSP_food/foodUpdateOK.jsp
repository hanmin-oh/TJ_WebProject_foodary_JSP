<%@page import="com.foodary.vo.UserFoodVO"%>
<%@page import="com.foodary.vo.UserFoodList"%>
<%@page import="com.foodary.service.UserFoodService"%>
<%@page import="com.foodary.vo.DietVO"%>
<%@page import="com.foodary.vo.DietList"%>
<%@page import="com.foodary.service.DietService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<jsp:useBean id="uvo" class="com.foodary.vo.UserFoodVO">
	<jsp:setProperty property="*" name="uvo"/>
</jsp:useBean>


<%
	request.setCharacterEncoding("UTF-8");

	String dietWriteDate = request.getParameter("dietWriteDate");
	String dietWriteTime = request.getParameter("dietWriteTime");
	
	DietVO dietvo = new DietVO();
	dietvo.setDietWriteDate(dietWriteDate);
	dietvo.setDietWriteTime(dietWriteTime);
/*	
	DietVO vo = new DietVO();
	vo.setDietWriteDate(dietWriteDate);
	vo.setDietWriteTime(dietWriteTime);
	out.println(vo);
*/	

	
	DietService.getInstance().dietUpdateByDateTime(dietvo);
	DietService.getInstance().selectDietList();
//	DietList dietList = DietService.getInstance().selectDietUpdateList(dvo);
//	out.println(dietList);
//	UserFoodVO uvo = new UserFoodVO();
//	vo.set


	UserFoodVO userfoodvo = new UserFoodVO();
	userfoodvo.setuserFoodDate(dietWriteDate);
	userfoodvo.setuserFoodTime(dietWriteTime);
	

	UserFoodService.getInstance().userFoodUpdateByDateTime(userfoodvo);

	UserFoodList userFoodList = UserFoodService.getInstance().selectUserFoodBeforeSelect(uvo);
//	out.println(userFoodList);

	request.setAttribute("dietList", dietList);
	request.setAttribute("userFoodList", userFoodList);
	
	
//	out.println("<script>");
//	out.println("alert('" + dvo.getIdx() + "번 글 수정완료!!!')");
//	out.println("location.href='main.jsp'");
//	out.println("</script>");
	

	
	pageContext.forward("dietList.jsp");

%>



</body>
</html>