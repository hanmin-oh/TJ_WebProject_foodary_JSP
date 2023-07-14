<%@page import="com.foodary.vo.UserFoodList"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>음식목록</title>
<!-- bootstrap -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="./js/foodWrite.js" defer="defer"></script>
<link rel="stylesheet" href="./css/threeGrid.css"/>
</head>
<body onload = "showNutrient()">
<div class="container">
      <div class="header">
      <jsp:include page="./headerAfter.jsp"></jsp:include>
   </div>
<%
      String[] foodNames;
      String[] kcals;
      String[] carbs;
      String[] proteins;
      String[] fats;
   
       // 요청 파라미터에서 데이터 가져오기
       foodNames = request.getParameterValues("foodName");
       kcals = request.getParameterValues("kcal");
       carbs = request.getParameterValues("carbs");
       proteins = request.getParameterValues("protein");
       fats = request.getParameterValues("fat");

       if (foodNames == null) {
           foodNames = new String[]{};
           kcals = new String[]{};
           carbs = new String[]{};
           proteins = new String[]{};
           fats = new String[]{};
      } else {
          // 세션에 데이터 저장
          session.setAttribute("foodNames", foodNames);
          session.setAttribute("kcals", kcals);
          session.setAttribute("carbs", carbs);
          session.setAttribute("proteins", proteins);
          session.setAttribute("fats", fats);
      }

      if (session.getAttribute("foodNames") != null) {
          // 세션으로부터 데이터 가져오기
          foodNames = (String[]) session.getAttribute("foodNames");
          kcals = (String[]) session.getAttribute("kcals");
          carbs = (String[]) session.getAttribute("carbs");
          proteins = (String[]) session.getAttribute("proteins");
          fats = (String[]) session.getAttribute("fats");
          
<<<<<<< HEAD
         request.setAttribute("foodNames", foodNames);
=======
          request.setAttribute("foodNames", foodNames);
>>>>>>> 380c6b0f1cd91977b12ce67469aa21c6e4e491db
         request.setAttribute("kcals", kcals);
         request.setAttribute("carbs", carbs);
         request.setAttribute("proteins", proteins);
         request.setAttribute("fats", fats);
      }
<<<<<<< HEAD
      String userFoodDate = request.getParameter("userFoodDate");
      String userFoodTime = request.getParameter("userFoodTime");
      request.setAttribute("userFoodDate", userFoodDate);
      request.setAttribute("userFoodTime", userFoodTime);
      
/*    if(userFoodDate != null) {
   } else {
	   session.setAttribute("userFoodDate", userFoodDate);
       session.setAttribute("userFoodTime", userFoodTime); 
   
   } */
=======
   
      String userFoodDate = request.getParameter("userFoodDate");
      String userFoodTime = request.getParameter("userFoodTime");
       request.setAttribute("userFoodDate", userFoodDate);
       request.setAttribute("userFoodTime", userFoodTime); 
>>>>>>> 380c6b0f1cd91977b12ce67469aa21c6e4e491db
%>
<div class="main" style="text-align: center;" align="center">
<input id="id" type="hidden" name="id" value="${rvo.id}"/>
<input id="height" type="hidden" name="height" value="${rvo.height}">
<input id="currentWeight" type="hidden" name="currentWeight" value="${rvo.currentWeight}">
<input id="goalWeight" type="hidden" name="goalWeight" value="${rvo.goalWeight}">
<input id="age" type="hidden" name="age" value="${rvo.age}">
<input id="gender" type="hidden" name="gender" value="${rvo.gender}"/>
<c:if test="${rvo.state eq 'health'}">
    <input id="health" type="radio" name="mode" value="health" checked="checked" style="display: none;"/>
    <input id="diet" type="radio" name="mode" value="diet" style="display: none;"/>
</c:if>
<c:if test="${rvo.state eq 'diet'}">
    <input id="health" type="radio" name="mode" value="health" style="display: none;"/>
    <input id="diet" type="radio" name="mode" value="diet" checked="checked" style="display: none;"/>
</c:if>
<c:set var="active" value="${rvo.active}"/>
<select name="active" style="height: 40px; display: none;">
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

      <input type="hidden" id="userFoodDate" name="userFoodDate" value="${userFoodDate}" />
      <input type="hidden" id="userFoodTime" name="userFoodTime" value="${userFoodTime}" />
         <span style="background: #fafcd9; font-size: 50pt; font-weight: 900;">푸드어리 쓰기</span>
      <form action="/foodary_final/JSP_diet/dietList.jsp" method="post">
      <!-- form값으로 시간 데이터 보내기 위한 input,hidden태그 -->
      <input type="hidden" id="userFoodDate" name="userFoodDate" value="${userFoodDate}" />
      <input type="hidden" id="userFoodTime" name="userFoodTime" value="${userFoodTime}" />
      <div class="diet">
      <table width="1400" align="center" border="0" cellpadding="10" cellspacing="10">
         <!-- 1 -->
            <tr>
            <td align="center">
             <!-- <button  type="button" onclick="foodList()">검색</button>  -->
                <button  type="button" onclick="foodList()" style="background: none; border: 0; cursor: pointer;">
                   <span style="background: #baffda; font-size: 35px; font-weight: 900;">음식 검색하러 가기</span>
                </button>
            </td>
         </tr>
         </table>
             <!-- 2 -->
        <table width="1400" align="center" border="0" cellpadding="0" cellspacing="10">
         <tbody id="tableBody">
         <c:set var="foodNames" value="${requestScope.foodNames}" />
         <c:set var="kcals" value="${requestScope.kcals}" />
         <c:set var="carbs" value="${requestScope.carbs}" />
         <c:set var="proteins" value="${requestScope.proteins}" />
         <c:set var="fats" value="${requestScope.fats}" />
         <c:if test="${not empty foodNames}">
         <c:forEach var="index" begin="0" end="${fn:length(foodNames) - 1}">
           <tr>
            <td>
               <input type="text" id="dietFoodName" name="dietFoodName" value="${foodNames[index]}" style="border: 0; font-size: 25pt; width: 150px; font-weight: 900;"/>
            </td>
            <td>
              <span style="background: lavender; font-size: 25pt;">칼로리:</span>
            </td>
            <td>
               <input type="text" id="dietKcal" name="dietKcal" value="${kcals[index]}" style="border: 0; font-size: 25pt; width: 80px;"/> kcal  
            </td>
            <td>
                <span style="background: lavender; font-size: 25pt;">탄수화물:</span>
            </td>
            <td>
               <input type="text" id="dietCarbs" name="dietCarbs" value="${carbs[index]}" style="border: 0; font-size: 25pt; width: 80px;"/> g   
            </td>
            <td>
               <span style="background: lavender; font-size: 25pt;">단백질:</span>
            </td>
            <td>
              <input type="text" id="dietProtein" name="dietProtein" value="${proteins[index]}" style="border: 0; font-size: 25pt; width: 80px;"/> g     
            </td>
            <td>
                <span style="background: lavender; font-size: 25pt;">지방:</span>
            </td>
            <td>
               <input type="text" id="dietFat" name="dietFat" value="${fats[index]}" style="border: 0; font-size: 25pt; width: 80px;"/> g     
            </td>
           <td align="center">
         <button type="button" onclick="foodPlus(<c:out value='${index}'/>)" style="border: 0; font-size: 25pt; background: 0;">
<<<<<<< HEAD
             <span style="background: #fafcd9; font-size: 25pt; font-weight: 900;">추가</span>
=======
            <span style="background: lavender; font-size: 35px; font-weight: 900;">추가</span>
>>>>>>> 380c6b0f1cd91977b12ce67469aa21c6e4e491db
         </button> 
         </td>
         </tr>
         </c:forEach>
       </c:if>
       <c:if test="${empty foodNames}">
        <tr>
        </tr>
      </c:if>
       </tbody>
       </table>
         <!-- 3 -->
       <table width="1400" align="center" border="0" cellpadding="10" cellspacing="10">
     <tbody id="tableBody">
       <fmt:requestEncoding value="UTF-8"/>
       <!-- foodWriteInsert.jsp에서 request 영역에 저장한 foodList에서 1페이지 분량의 글을 꺼내온다. -->
       <c:set var="list" value="${userFoodList.list}"/>
       <c:forEach var="uvo" items="${list}" varStatus="status">
         <tr>
           <td>
<<<<<<< HEAD
             <input type="text" id="userFoodName_${status.index}" name="userFoodName_${status.index}" value="${uvo.userFoodName}"
             	style="border: 1; font-size: 25pt; width: 200px; font-weight: 900; height: 45px;"/>   
=======
             <input type="text" id="userFoodName_${status.index}" name="userFoodName_${status.index}" value="${uvo.userFoodName}" style="border: 0; font-size: 25pt; width: 200px; font-weight: 900;"/>   
>>>>>>> 380c6b0f1cd91977b12ce67469aa21c6e4e491db
           </td>
           <td>
               <span style="background: lavender; font-size: 25pt;">칼로리:</span>
           </td>
           <td class="kcals" id="kcal">
<<<<<<< HEAD
             <input type="text" id="userKcal_${status.index}" name="userKcal_${status.index}" value="${uvo.userKcal}"
             	style="border: 1; font-size: 25pt; width: 80px; height: 45px;"/> kcal      
=======
             <input type="text" id="userKcal_${status.index}" name="userKcal_${status.index}" value="${uvo.userKcal}" style="border: 0; font-size: 25pt; width: 80px;"/> kcal      
>>>>>>> 380c6b0f1cd91977b12ce67469aa21c6e4e491db
           </td>
           <td>
                <span style="background: lavender; font-size: 25pt;">탄수화물:</span>
           </td>
           <td class="carbs">
<<<<<<< HEAD
             <input type="text" id="userCarbs_${status.index}" name="userCarbs_${status.index}" value="${uvo.userCarbs}"
             	style="border: 1; font-size: 25pt; width: 80px; height: 45px;"/> g      
=======
             <input type="text" id="userCarbs_${status.index}" name="userCarbs_${status.index}" value="${uvo.userCarbs}" style="border: 0; font-size: 25pt; width: 80px;"/> g      
>>>>>>> 380c6b0f1cd91977b12ce67469aa21c6e4e491db
           </td>
           <td>
            <span style="background: lavender; font-size: 25pt;">단백질:</span>
           </td>
           <td class="proteins">
<<<<<<< HEAD
             <input type="text" id="userProtein_${status.index}" name="userProtein_${status.index}" value="${uvo.userProtein}"
             	style="border: 1; font-size: 25pt; width: 80px; height: 45px;"/> g      
=======
             <input type="text" id="userProtein_${status.index}" name="userProtein_${status.index}" value="${uvo.userProtein}" style="border: 0; font-size: 25pt; width: 80px;"/> g      
>>>>>>> 380c6b0f1cd91977b12ce67469aa21c6e4e491db
           </td>
           <td>
              <span style="background: lavender; font-size: 25pt;">지방:</span>
           </td>
           <td class="fats">
<<<<<<< HEAD
             <input type="text" id="userFat_${status.index}" name="userFat_${status.index}" value="${uvo.userFat}"
             	style="border: 1; font-size: 25pt; width: 80px; height: 45px;"/> g    
           </td>
           <td align="center">
             <button type="button" onclick="updateUserFood(${uvo.idx}, ${status.index})" style="border: 0; font-size: 25pt; background: 0;">
                 <span style="background: #fafcd9; font-size: 25pt; font-weight: 900;">수정</span>
=======
             <input type="text" id="userFat_${status.index}" name="userFat_${status.index}" value="${uvo.userFat}" style="border: 0; font-size: 25pt; width: 80px;"/> g    
           </td>
           <td align="center">
             <button type="button" onclick="updateUserFood(${uvo.idx}, ${status.index})" style="border: 0; font-size: 25pt; background: 0;">
                <span style="background: lavender; font-size: 35px; font-weight: 900;">수정</span>
>>>>>>> 380c6b0f1cd91977b12ce67469aa21c6e4e491db
             </button>
             &nbsp;
             <button type="button" onclick="location.href='deleteFood.jsp?idx=${uvo.idx}&userFoodDate=${userFoodDate}&userFoodTime=${userFoodTime}'"
                style="border: 0; font-size: 25pt; background: 0;">
<<<<<<< HEAD
               <span style="background: #fafcd9; font-size: 25pt; font-weight: 900;">삭제</span>
=======
              <span style="background: lavender; font-size: 35px; font-weight: 900;">삭제</span>
>>>>>>> 380c6b0f1cd91977b12ce67469aa21c6e4e491db
           </button>
           </td>
         </tr>
       </c:forEach>
     </tbody>
   </table>
       <table width="1400" align="center" border="0" cellpadding="10" cellspacing="10">
      <!-- 4 -->
<<<<<<< HEAD
     <tr style="height: 50px;"></tr>
      <tr>
         <td colspan="2" class="text-center">
            <span style="background: lavender; font-size: 30pt;">메모</span>
=======
      <tr>
         <td colspan="2" class="text-center">
            <label for="memo">메모</label>
>>>>>>> 380c6b0f1cd91977b12ce67469aa21c6e4e491db
         </td>
         <td colspan="12">
            <textarea 
               id="memo"
<<<<<<< HEAD
               rows="5" 
               name="dietMemo" 
               style="resize: none; width: 80%; height: 75%; vertical-align: middle; padding: 10px;"
=======
               rows="10" 
               name="dietMemo" 
               style="resize: none; width: 97%; height: 75%; vertical-align: middle;"
>>>>>>> 380c6b0f1cd91977b12ce67469aa21c6e4e491db
               ></textarea>
         </td>
      </tr>
      <!-- 5 -->
      <tr style="display: none;">
         <td colspan="3" class="text-center">
            <label for="totalcalorie">사진첨부</label>
         </td>
         <td colspan="10" align="center">
            <input type="text" id="province" name="province" placeholder="사진파일명" style="width: 95%;"/>   
         </td>   
         <td align="center">
           <input type="button" value="파일선택" onclick="location.href='showDiet.jsp'"/>
         </td>
      </tr>
       </table>
       <!-- 6 -->
   </div>
      <div align="center" style="text-align: center;">
          <table width="1400" align="center" border="0" cellpadding="10" cellspacing="10">
<<<<<<< HEAD
          <tr style="height: 30px;"></tr>
           <tr>
              <td style="height: 40px; text-align: left;">
                 <span style="background: lavender; font-size: 25pt; margin-left: 300px;"><칼로리></span>
=======
           <tr>
              <td style="height: 40px;">
                 <칼로리> 
>>>>>>> 380c6b0f1cd91977b12ce67469aa21c6e4e491db
                 <div class="progress" style="height: 40px; width: 800px; margin-left: auto; margin-right: auto;">
                   <div id="kcalGraph" class="progress-bar" role="progressbar" 
                   aria-valuemin="0" style="width:0%; height: 40px; font-size: 18pt; background: #8800ff;">
                   </div>
                 </div>
               </td>   
            </tr>
           <!-- 7 -->
<<<<<<< HEAD
           <tr style="height: 30px;"></tr>
            <tr>
             <td style="height: 40px; text-align: left;">
                <span style="background: lavender; font-size: 25pt; margin-left: 300px;"><탄수화물></span>
                <div class="progress" style="height: 40px; width: 800px; margin-left: auto; margin-right: auto;">
                  <div id="carbsGraph" class="progress-bar progress-bar-info" role="progressbar" 
                     aria-valuemin="0" style="width:0%; height: 40px; font-size: 18pt; background: #8800ff;">
=======
            <tr>
             <td>
                <탄수화물>
                <div class="progress" style="height: 40px; width: 800px; margin-left: auto; margin-right: auto;">
                  <div id="carbsGraph" class="progress-bar progress-bar-info" role="progressbar" 
                     aria-valuemin="0" style="width:0%; height: 40px; font-size: 18pt; background: #8800ff;">
                     
>>>>>>> 380c6b0f1cd91977b12ce67469aa21c6e4e491db
                  </div>
                </div>
             </td>
            </tr>
<<<<<<< HEAD
            <tr style="height: 30px;"></tr>
            <tr>
             <td style="height: 40px; text-align: left;">
                  <span style="background: lavender; font-size: 25pt; margin-left: 300px;"><단백질></span>
                <div class="progress" style="height: 40px; width: 800px; margin-left: auto; margin-right: auto;">   
                     <div id="proteinGraph" class="progress-bar progress-bar-info" role="progressbar"
                        aria-valuemin="0" style="width:0%; height: 40px; font-size: 18pt; background: #8800ff;">
                     </div>
                </div>
             </td>
            </tr>
            <tr style="height: 30px;"></tr>
            <tr>
             <td style="height: 40px; text-align: left;">
                   <span style="background: lavender; font-size: 25pt; margin-left: 300px;"><지방></span>
                <div class="progress" style="height: 40px; width: 800px; margin-left: auto; margin-right: auto;">
                     <div id="fatGraph" class="progress-bar progress-bar-info" role="progressbar"
                        aria-valuemin="0" style="width:0%; height: 40px; background: #8800ff;">
=======
            <tr>
             <td>
                  <단백질>
                <div class="progress" style="height: 40px; width: 800px; margin-left: auto; margin-right: auto;">   
                     <div id="proteinGraph" class="progress-bar progress-bar-info" role="progressbar"
                        aria-valuemin="0" style="width:0%; height: 40px; font-size: 18pt; background: #8800ff;">
                        
                     </div>
                </div>
             </td>
            </tr> 
            <tr>
             <td>
                   <지방> 
                <div class="progress" style="height: 40px; width: 800px; margin-left: auto; margin-right: auto;">
                     <div id="fatGraph" class="progress-bar progress-bar-info" role="progressbar"
                        aria-valuemin="0" style="width:0%; height: 40px; background: #8800ff;">
                        
>>>>>>> 380c6b0f1cd91977b12ce67469aa21c6e4e491db
                     </div>
                </div>
             </td>   
          </tr>
          <!-- 8 -->
<<<<<<< HEAD
          <tr style="height: 50px;"></tr>
          <tr>
             <td class="text-center">
                <button type="submit" style="background: none; border: 0; cursor: pointer;">
                	 <span style="background: #fafcd9; font-size: 30pt; font-weight: 900;">저장 하기</span>
                </button>
=======
          <tr>
             <td class="text-center">
                <input type="button" value="식단보기" onclick="location.href='/foodary_final/JSP_diet/dietList.jsp'"/>
                <input type="submit" value="저장"/>
>>>>>>> 380c6b0f1cd91977b12ce67469aa21c6e4e491db
             </td>
          </tr>
         </table>
      </div>
      </form>
      </div>
   <div class="footer">
      <jsp:include page="./footerAfter.jsp"></jsp:include>
   </div>
</div>
</body>
</html>