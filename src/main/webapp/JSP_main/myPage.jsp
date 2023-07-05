<%@page import="com.foodary.vo.UserRegisterVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 - 회원정보</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="css/mainCss.css"/>
<script type="text/javascript" src="js/jquery-3.7.0.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="./js/updateMypage.js"></script>
<script type="text/javascript" src="./js/updateMyCal.js"></script>
</head>
<body>
<header style="width: auto;">
   <jsp:include page="./headerAfter.jsp"></jsp:include>
</header>
<br/>
<form action="myPageUpdateEnd.jsp" method="post">
<main>
      <div class="col-md-3" style="text-align: center; width: auto; margin-right: 30px; display: inline;" align="center">
         <div style="width: 300px; height: 200px;">
            <button type="button">회원 정보</button><br/><br/>
            <button type="button" onclick="mainCalculator()">권장 영양소</button>
         </div>
      </div>
      <div class="col-md-6" style="text-align: center; width: auto; display: inline-block;" align="center">
         <table width="900" border="1" cellpadding="5" cellspacing="0">
            <tr>
               <th>이름</th>
               <td>
                  <label>
                     <input id="name" type="text" name="name" autocomplete="off" value="${vo.username}"/>
                  </label>
               </td>
            </tr>
            <tr>
               <th>성별</th>
               <td colspan="2">
                  <input id="gender" type="text" name="gender" value="${vo.gender}" disabled="disabled"/>
                   </td>
            </tr>
            <tr>
               <th>아이디</th>
               <td>
                  <input id="id" type="text" name="id" autocomplete="off" value="${vo.id}"/>
               </td>
            </tr>
            <tr>
               <th>비밀번호</th>
               <td>
                  <input id="passwordUpdate" type="submit" value="수정" onclick="location.href='passwordUpdate.jsp'"/>
               </td>
            </tr>
            <tr>
               <th>이메일</th>
               <td>
                  <input id="email" type="email" name="email" autocomplete="off" value="${vo.email}"/>
               </td>
            </tr>
           <tr>
                <td colspan="6" align="center">
                  <input id="updateBtn" type="submit" value="정보 수정" onclick="location.href='myPageUpdate.jsp'"/> 
                  <input type="button" value="회원 탈퇴" onclick="location.href='unregister.jsp'"/> 
                </td>
           </tr>
      </table>
<br/><br/><br/>
   </div>
<div id="recommendCal" style="display: none;">
   <div class="col-md-9" style="text-align: center; width: auto; display: inline-block;" align="center">
      키: <input id="height" type="text" name="height" value="${vo.height}" style="width: 50px;">&nbsp;cm
      현재 체중: <input id="currentWeight" type="text" name="currentWeight" value="${vo.currentWeight}" style="width: 50px;">&nbsp;kg
      목표 체중: <input id="goalWeight" type="text" name="goalWeight" value="${vo.goalWeight}" style="width: 50px;">&nbsp;kg
      나이: <input id="age" type="text" name="age" value="${vo.age}" style="width: 50px;"/>&nbsp;&nbsp;
   <br/><br/>
         Mode: 
         <c:if test="${rvo.state eq 'health'}">
             <input id="health" type="radio" name="health" value="health" checked="checked"/> 건강한 삶 
             <input id="diet" type="radio" name="diet" value="diet"/> 목표달성!
         </c:if>
         <c:if test="${rvo.state eq 'diet'}">
             <input id="health" type="radio" name="health" value="health"/> 건강한 삶 
             <input id="diet" type="radio" name="diet" value="diet" checked="checked"/> 목표달성!
         </c:if>
        &nbsp;&nbsp;/&nbsp;&nbsp;
 
      활동량:
      <c:set var="active" value="${vo.active}"/>
      <select name="active">
         <option value="다시" name="active" 
            <c:if test="${active == '다시'}">selected="selected"
            </c:if>>활동량 선택
         </option>
           <option value="1.2" name="active" 
              <c:if test="${active == '1.2'}">selected="selected"
              </c:if>>많이 앉아있는 경우
           </option>
         <option value="1.375" name="active" 
            <c:if test="${active == '1.375'}">selected="selected"
            </c:if>>앉아있는 일이 적은 경우
         </option>
         <option value="1.55" name="active" 
            <c:if test="${active == '1.55'}">selected="selected"
            </c:if>>움직임이 많은 경우
         </option>
         <option value="1.725" name="active" 
            <c:if test="${active == '1.725'}">selected="selected"
            </c:if>>운동 될 움직임을 할 경우
         </option>
         <option value="1.9" name="active" 
            <c:if test="${active == '1.9'}">selected="selected"
            </c:if>>매우 많은 운동량
         </option>
      </select>
   </div><br/>

   <table width="500" border="1" cellpadding="5" cellspacing="0">
      <tr>
         <th>칼로리</th>
         <td>
            <label><input id="kcal" type="text" name="kcal" autocomplete="off" /></label>
         </td>
      </tr>
      <tr>
         <th>탄수화물</th>
         <td>
            <label><input id="carbs" type="text" name="carbs" autocomplete="off" /></label>
         </td>
      </tr>
      <tr>
         <th>단백질</th>
         <td>
            <label><input id="protein" type="text" name="protein" autocomplete="off" /></label>
         </td>
      </tr>
      <tr>
         <th>지방</th>
         <td>
            <label><input id="fat" type="text" name="fat" autocomplete="off" /></label>
         </td>
      </tr>
   </table>
   <br/>
   <div align="center">
      <input style="align-content: center;" type="submit" value="수정완료"/>
   </div>
</main>
   <input type="hidden" name="id" value="${vo.id}"/>
</form>
</div>
<footer>
   <jsp:include page="./footerAfter.jsp"></jsp:include>
</footer>
</body>
</html>