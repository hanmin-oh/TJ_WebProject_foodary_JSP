<%@page import="com.foodary.service.UserRegisterService"%>
<%@page import="com.foodary.vo.UserRegisterVO"%>
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
   
   // increment.jsp 또는 contentView.jsp에서 넘어오는 글번호, 돌아갈 페이지 번호, 분기할 페이지 이름을 받는다.
   int idx = Integer.parseInt(request.getParameter("idx"));
   // String job = request.getParameter("job"); 
   
   // 메인글 1건을 얻어오는 메소드를 호출한다.
   UserRegisterVO vo = UserRegisterService.getInstance().selectByIdx(idx);

   
   // 브라우저에 출력할 메인글이 저장된 객체, 작업 후 돌아갈 페이지 번호, 줄바꿈에 사용할 엔터키를 보내준다.
   request.setAttribute("vo", vo);
   
   pageContext.forward("myPage.jsp");
   
%>
</body>
</html>