<%@page import="com.foodary.vo.UserRegisterVO"%>
<%@page import="com.foodary.service.UserRegisterService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 - 회원정보</title>
<script type="text/javascript" src="./js/updateMypage.js"></script>
<style type="text/css">
	a {
		text-decoration: none;
		color: black;
	}

</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	
	
%>

<jsp:useBean id="vo" class="com.foodary.vo.UserRegisterVO">
	<jsp:setProperty property="*" name="vo"/>
</jsp:useBean>
${vo}

<%
//	register.jsp에서 넘어온 메인글을 테이블에 저장하는 메소드를 실행한다.
	UserRegisterService.getInstance().insertregister(vo);
%>
	
	

	
</body>
</html>