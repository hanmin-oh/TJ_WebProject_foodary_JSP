<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
   String username = request.getParameter("username");
   String gender = request.getParameter("gender");
   String id = request.getParameter("id");
   String password = request.getParameter("password");
   String email = request.getParameter("email");
   
   request.setAttribute("username", username);
   request.setAttribute("gender", gender);
   request.setAttribute("id", id);
   request.setAttribute("password", password);
   request.setAttribute("email", email);
%>

   <c:set var="vo" value="${UserRegisterVO.vo}"/>
      ${vo}
      ${vo.username}
<h2>마이페이지 - 회원정보</h2>
<table width="500" border="1" cellpadding="5" cellspacing="0">
      <tr>
         <th rowspan="6">회원 정보</th>
         <th rowspan="6">
            <a rel="myRecommendCal" href="myRecommendCal.jsp">권장 영양소</a>   
         </th>
         
      </tr>
      <tr>
         <th>이름</th>
         <td>
            <label>
               ${vo.username}
               <input id="name" type="text" name="name" autocomplete="off"/>
            </label>
         </td>
      </tr>
      <tr>
         <th>성별</th>
         <td colspan="2">
               <input id="male" type="radio" name="gender" checked="checked" value="남성"/>남성
               <input id="female" type="radio" name="gender" value="여성"/>여성
             </td>
      </tr>
      <tr>
         <th>아이디</th>
         <td>
            <label><input id="id" type="text" name="id" autocomplete="off" /></label>
         </td>
      </tr>
      <tr>
         <th>비밀번호</th>
         <td>
            <label><input id="password" type="password" name="password" autocomplete="off" /></label>
         </td>
      </tr>
      <tr>
         <th>이메일</th>
         <td>
            <label><input id="email" type="email" name="email" autocomplete="off" /></label>
         </td>
      </tr>
      
      
     <tr>
          <td colspan="6" align="center">
            <input id="updateBtn" type="submit" value="정보 수정" onclick="updateMypage()"/> 
            <input type="button" value="회원 탈퇴" onclick="location.href='unregister.jsp'"/> 
          </td>
     </tr>

</table>
   
   

   
</body>
</html>