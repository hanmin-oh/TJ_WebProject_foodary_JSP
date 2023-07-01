<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>푸드어리 회원가입</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script type="text/javascript" src="./js/UserRegister.js"></script> 
</head>
<body>

<div>
<form action="successRegister.jsp" method="post">
   <table width="1000" border="1" border-bottom="none" cellpadding="5" cellspacing="0">
      <tr>
      <!-- 1 -->
         <th>
            <label for="username">이름</label>
         </th>   
         <td colspan="2">
            <label><input id="username" type="text" name="username" autocomplete="off"/></label>
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
            <input class="btn btn-primary" type="button" value="중복검사" onclick="idCheckFunction()"/> 
         </td>
      </tr>
      <tr>
         <th>
            <label for="password">비밀번호</label>
         </th>
         <td colspan="2">
            <label><input id="password" type="password" name="password" 
               autocomplete="off" onkeyup="passwordCheckFunction()"/></label>
         </td>
      </tr>
      <tr>
         <th style="width: 300px;">
            <label for="passwordCheck">비밀번호확인</label>
         </th>
         <td>
            <label><input id="passwordCheck" type="password" name="passwordCheck" 
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
               <input id="male" type="radio" name="gender" checked="checked"/>남성
               <input id="female" type="radio" name="gender"/>여성
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
            <label for="age">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;나이</label>
            <label><input id="age" type="text" name="age" autocomplete="off"/></label>
         </th>
      </tr>
      <tr>
         <th>
            <label for="currentWeight">현재 체중</label>
            <input id="currentWeight" type="text" name="currentWeight" autocomplete="off"/>kg
         </th>
         <th>
            <label for="goalWeight">목표 체중</label>
            <label><input id="goalWeight" type="text" name="goalWeight" autocomplete="off"/>kg</label>
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
               <input id="health" type="radio" name="mode" checked="checked"/>건강한 삶
               <input id="diet" type="radio" name="mode"/>다이어트
            </label>
         </td>
      </tr>
      <tr>
         <td colspan="2" align="center">
            <input class="btn btn-primary" type="button" value="회원가입" onclick="userRegister()"/> 
            <input type="reset" value="다시쓰기"/> 
         </td>
      </tr>
   </table>
   
   <input type="hidden" name="ip" onclick="userRegister()"/> 
   <%-- <input type="hidden" name="currentPage" value="<%=currentPage%>"/> --%>
</form>
</div>






</body>
</html>