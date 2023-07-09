<%@page import="com.foodary.vo.UserFoodVO"%>
<%@page import="com.foodary.vo.DietVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.foodary.service.UserFoodService"%>
<%@page import="com.foodary.vo.UserFoodList"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Time"%>
<%@page import="java.time.LocalTime"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.LocalDate"%>
<%@page import="com.foodary.service.DietService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>식단 목록</title>
<!-- <script type="text/javascript" src="html2canvas.hertzen.com_dist_html2canvas"></script> -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
</head>
<body>
<!-- insertOK.jsp -->
<%
	request.setCharacterEncoding("UTF-8");
 
	String dietMemo = request.getParameter("dietMemo");
	/*	String dietWriteDate_re = request.getParameter("userfoodDate");
//	SimpleDateFormat inputDate = new SimpleDateFormat("yyyy-MM-dd");
	SimpleDateFormat outputDate = new SimpleDateFormat("yyyy-MM-dd");
//	String dietWriteDate = dietWriteDate_re.replace("T", " ");

//	String dietWriteTime_re = request.getParameter("userfoodTime");
	SimpleDateFormat inputTime = new SimpleDateFormat("HH:mm");
//	SimpleDateFormat outputTime = new SimpleDateFormat("hh:mm");
	
	String dietWriteDate = null;
	String dietWriteTime = null;
	try {
		if (dietWriteDate_re != null) {
			Date date = inputDate.parse(dietWriteDate_re);
			dietWriteDate = outputDate.format(date);
		}
		if (dietWriteTime_re != null) {
			Date time = inputTime.parse(dietWriteTime_re);
			dietWriteTime = inputTime.format(time);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	out.println(dietWriteDate); */
	
 %>

 <jsp:useBean id="dvo" class="com.foodary.vo.DietVO">
	<jsp:setProperty property="*" name="dvo"/>
</jsp:useBean> 
${dvo}

<%
	String dietWriteDate = request.getParameter("userfoodDate");
	String dietWriteTime = request.getParameter("userfoodTime");
	out.println(dietWriteDate);
	dvo.setDietWriteDate(dietWriteDate);
	dvo.setDietWriteTime(dietWriteTime);
	out.println(dvo);
	if (dietMemo != null) {
//	foodWrite.jsp에서 넘어온 메인글 테이블에 저장하는 메소드 실행
		//DietService.getInstance().insert(dvo);
	} 
//	out.println(userFoodList);
//	
// 	DietList dietList = DietService.getInstance().selectList(dietWriteDate);
	
//	request.setAttribute("enter", "\r\n");
	request.setAttribute("dietWriteDate", dietWriteDate);
	request.setAttribute("dietWriteTime", dietWriteTime);
//	request.setAttribute("dietList", dietList);

//	out.println("현서 : " + userFoodList);
//	request.setAttribute("userFoodList", userFoodList);

	//pageContext.forward("dietListView.jsp"); 
	
//	입력한 음식글 dietListView.jsp로 넘겨준다.
//	response.sendRedirect("dietListView.jsp?dietWriteDate=" + dietWriteDate); 
%>




</body>
</html>;