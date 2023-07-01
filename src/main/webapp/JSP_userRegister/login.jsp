<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>푸드어리 회원가입</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script type="text/javascript" src="./js/login.js"></script> 
</head>
<body>

<%-- <%
   request.setCharacterEncoding("UTF-8");

   String id = "";
   String password = "";

   try {
      id = request.getParameter("id").trim();
      password = request.getParameter("password").trim();
      
   } catch(NullPointerException e) {
      
   }

   if((id + password).length() != 0) { 
      
      out.println("<script>");
      if(id.equals("id") && password.equals("password")){
         session.setAttribute("id", id);
         session.setAttribute("name", "관리자");
         session.setAttribute("login", "yes"); 
         out.println("alert('" + session.getAttribute("name") + "님 어서오세요.')");
      } else {
         out.println("alert('아이디 또는 비밀번호가 올바르지 않습니다.')");
      }
      out.println("</script>");

   }

   String logout = request.getParameter("logout");
   if(logout != null && logout.equals("yes")) {
      out.println("<script>");
      out.println("alert('" + session.getAttribute("name") + "님 로그아웃 되었습니다.')");
       session.removeAttribute("id");
      session.removeAttribute("name");
      session.removeAttribute("login"); 
      out.println("</script>");
   }


   String login = (String) session.getAttribute("login");
   if(login != null && login.equals("yes")) { 
%>
      <h2>로그인 성공!</h2>
      <b>${id}</b>님 안녕하세요:)<br/><br/>&nbsp;&nbsp;&nbsp;
      <input type="button" value="로그아웃" onclick="location.href='?logout=yes'"/> 
      
      

<%      
   } else {
%> --%>
<div>
<form action="successRegister.jsp" method="post">
   <table width="1000" border="1" border-bottom="none" cellpadding="5" cellspacing="0">
      <tr>
      <!-- 1 -->
         <th>
            <label for="name">이름</label>
         </th>   
         <td colspan="2">
            <label><input id="name" type="text" name="name" autocomplete="off"/></label>
         </td>
      </tr>
      <tr>
         <th>
            <label for="id">아이디</label>
         </th>   
         <td>
            <label><input id="id" type="text" name="id" autocomplete="off"/></label>
         </td>
         <td>
			<input class="btn btn-primary" type="button" value="중복검사"
							onclick="idCheckFunction()"/> 
		</td>
      </tr>
      <tr>
         <th>
            <label for="password">비밀번호</label>
         </th>
         <td colspan="2">
            <label><input id="userPassword1" type="password" name="userPassword1" 
            	autocomplete="off" onkeyup="passwordCheckFunction()"/></label>
         </td>
      </tr>
      <tr>
         <th style="width: 300px;">
            <label for="password">비밀번호확인</label>
         </th>
         <td>
            <label><input id="userPassword2" type="password" name="userPassword2" 
            	autocomplete="off" onkeyup="passwordCheckFunction()"/></label>
         </td>
         <td>
         	<h5 id="passwordCheckMessage" style="color: red; font-weight: bold;"></h5>
         </td>
      </tr>
      <tr>
         <th>
            <label for="email">이메일</label>
         </th>
         <td colspan="2">
            <label><input id="email" type="email" name="email" autocomplete="off"/></label>
         </td>
      </tr>
      <tr>
         <th>
            <label for="gender">성별</label>
         </th>
         <td colspan="2">
            <label>
               <input id="gender" type="radio" name="gender" checked="checked"/>남성
               <input id="gender" type="radio" name="gender"/>여성
            </label>
         </td>
      </tr>
      </table>
      <table width="1000" border="1" cellpadding="5" cellspacing="0">
      <tr>
         <th>
            <label for="height">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;키</label>
            <input id="height" type="text" name="height" autocomplete="off"/>cm
         </th>
         <th>
            <label for="height">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;나이</label>
            <label><input id="height" type="text" name="height" autocomplete="off"/></label>
         </th>
      </tr>
      <tr>
         <th>
            <label for="registerWeight1">현재 체중</label>
            <input id="registerWeight1" type="text" name="registerWeight1" autocomplete="off"/>kg
         </th>
         <th>
            <label for="registerWeight2">목표 체중</label>
            <label><input id="registerWeight2" type="text" name="registerWeight2" autocomplete="off"/>kg</label>
         </th>
      </tr>
      <tr>
         <th>
            <label for="active">활동량</label>
         </th>   
         <td>
            <select>
               <option>많이 앉아있는 경우</option>
               <option>앉아있는 일이 적은 경우</option>
               <option>움직임이 많은 경우</option>
               <option>운동 될 움직임을 할 경우</option>
               <option>매우 많은 운동량</option>
            </select>
         </td>
      </tr>
      <tr>
         <th>
            <label for="mode">Mode</label>
         </th>
         <td>
            <label>
               <input id="mode" type="radio" name="mode" checked="checked"/>건강한 삶
               <input id="mode" type="radio" name="mode"/>다이어트
            </label>
         </td>
      </tr>
      <tr>
         <td colspan="2" align="center">
         <input class="btn btn-primary" type="button" value="회원가입"
							onclick="userRegister()"/> 
          <!--   <input type="submit" value="회원가입"/>  -->
            <input type="reset" value="다시쓰기"/> 
         </td>
      </tr>
   </table>
   
   <input type="hidden" name="ip" onclick="userRegister()"/> 
   <%-- <input type="hidden" name="currentPage" value="<%=currentPage%>"/> --%>
</form>
</div>
<%-- <%      
   }
%>
 --%>


</body>
</html>