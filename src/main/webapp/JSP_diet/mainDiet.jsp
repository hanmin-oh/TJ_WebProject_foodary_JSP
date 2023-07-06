<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
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
		
		String dietWriteDate_re = request.getParameter("dietWriteDate");
		SimpleDateFormat inputDate = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat outputDate = new SimpleDateFormat("yyyy-MM-dd");
		//String dietWriteDate = dietWriteDate_re.replace("T", " ");
		//out.println(dietWriteDate);
		
		String dietWriteTime_re = request.getParameter("dietWriteTime");
		SimpleDateFormat inputTime = new SimpleDateFormat("HH:mm");
		//SimpleDateFormat outputTime = new SimpleDateFormat("hh:mm");
		
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
		
		//out.println(dietWriteDate);
		
		

	request.setAttribute("dietWriteDate", dietWriteDate);
	request.setAttribute("dietWriteTime", dietWriteTime);
//	request.setAttribute("dietList", dietList);

//	out.println("현서 : " + userFoodList);
//	request.setAttribute("userFoodList", userFoodList);

	pageContext.forward("dietListView.jsp");

%>
</body>
</html>