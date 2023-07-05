<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<style>
	.dietContent_title {
		float: left;
		width: 100%;
		height: 100px;
		line-height: 100px;
		text-align: center;
		background-color: #dedede;
		font-size: 35px;
	}

	table {
		margin: 0 auto;
	}
	
	td, th {
		height: 50px;
		border: 1px solid black;
	}


</style>
</head>
<body>

<%
  String foodName = request.getParameter("foodName");
  String kcal = request.getParameter("kcal");
  String carbs = request.getParameter("carbs");
  String protein = request.getParameter("protein");
  String fat = request.getParameter("fat");
  out.println(foodName);
%>

<div class="dietContent_title">
   <b><i class="bi bi-cup-straw"></i>식단 기록</b>
</div>
<form action="/foodary/JSP_diet/dietList.jsp" method="post">
<div class="diet">
	<table width="1400" align="center" border="1" cellpadding="10" cellspacing="0">
      <!-- 1 -->
	   <tr>
	      <td colspan="2" class="text-center">
	         <label for="ateDate">일시</label>
	      </td>
	      	<td colspan="12">
	         	 <input type="date" id="dietWriteDate" name="dietWriteDate" style="width: 48%; height: 90%;"/>
        	 <input type="time" id="dietWriteTime" name="dietWriteTime" style="width: 48%; height: 90%;"/>
	        </td>
		   </tr>
		    <!-- 2 -->
		   <tr>
	      <td colspan="3" class="text-center" style="font-size: 13px;">
	         <label for="food">음식 검색</label>
	      </td>
	      <td colspan="6" align="center">
	         <input type="text" name="food" style="width:95%;"/>      
	      </td>
	      <td colspan="2" align="center">
		      <button  type="button" onclick="location.href='./foodList.jsp'">검색</button> 
	      </td>
	      <td colspan="3" align="center">
	          <button  type="button" onclick="foodPlus()">음식추가</button> 
	      </td>
	   </tr>
	   </table>
	  <table width="1400" align="center" border="1" cellpadding="10" cellspacing="0">
	   <tbody id="tableBody">
	     <tr>
	      <td colspan="2" class="text-center">
	         <label for="foodName">음식이름</label>
	      </td>
	      <td colspan="2" class="text-center">
	    	   <input type="text" name="dietFoodName" value="<%= foodName %>"/>   
	      </td>
	      
	      <td colspan="1" class="text-center">
	         <label for="totalcalorie">칼로리</label>
	      </td>
	      
	      <td colspan="2" class="text-center" id="kcal">
	         <input type="text" name="dietKcal" value="<%= kcal %>"/>      
	      </td>
	      
	      <td colspan="1">
	         <label for="carbo">탄수화물</label>
	      </td>
	      
	      <td colspan="1"class="text-center">
	         <input type="text" name="dietCarbs" value="<%= carbs %>"/>      
	      </td>
	      
	      <td colspan="1">
	         <label for="protein">단백질</label>
	      </td>
	      
	      <td colspan="1">
	        <input type="text" name="dietProtein" value="<%= protein %>"/>       
	      </td>
	      
	      <td colspan="1" class="text-center">
	         <label for="province">지방</label>
	      </td>
	      
	      <td colspan="1" align="center">
	         <input type="text" name="dietFat" value="<%= fat %>"/>      
	      </td>
	      <td colspan="1" align="center">
	          <input type="button" value="테스트" onclick="updateVOValues()"/>
	      </td>
	   </tr>
    </tbody>
    </table>
	  <table width="1400" align="center" border="1" cellpadding="11" cellspacing="0">
	   <tbody id="tableBody">
	     <tr>
	     <td colspan="1" align="center">
	          내 식단
	      </td>
	      <td colspan="2" class="text-center">
	         <label for="foodName">음식이름</label>
	      </td>
	      <td colspan="2" class="text-center">
	    	   <input type="text" name="dietFoodName" value="<%= foodName %>"/>   
	      </td>
	      
	      <td colspan="1" class="text-center">
	         <label for="totalcalorie">칼로리</label>
	      </td>
	      
	      <td colspan="2" class="text-center" id="kcal">
	         <input type="text" name="dietKcal" value="<%= kcal %>"/>      
	      </td>
	      
	      <td colspan="1">
	         <label for="carbo">탄수화물</label>
	      </td>
	      
	      <td colspan="1"class="text-center">
	         <input type="text" name="dietCarbs" value="<%= carbs %>"/>      
	      </td>
	      
	      <td colspan="1">
	         <label for="protein">단백질</label>
	      </td>
	      
	      <td colspan="1">
	        <input type="text" name="dietProtein" value="<%= protein %>"/>       
	      </td>
	      
	      <td colspan="1" class="text-center">
	         <label for="province">지방</label>
	      </td>
	      
	      <td colspan="1" align="center">
	         <input type="text" name="dietFat" value="<%= fat %>"/>      
	      </td>
	      <td colspan="1" align="center">
	         <input type="button" value="수정" onclick="location.href='updateFood.jsp'"/>
	         <input type="button" value="삭제" onclick="location.href='deleteFood.jsp'"/>
	      </td>
	   </tr>
    </tbody>
    </table>
    <table width="1400" align="center" border="1" cellpadding="10" cellspacing="0">
   <!-- 4 -->
   <tr>
      <td colspan="2" class="text-center">
         <label for="memo">메모</label>
      </td>
      <td colspan="12">
         <textarea 
            id="memo"
            rows="10" 
            name="dietMemo" 
            style="resize: none; width: 97%; height: 75%; vertical-align: middle;"
            ></textarea>
      </td>
   </tr>
   <!-- 5 -->
   <tr>
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
    <table width="1400" align="center" border="1" cellpadding="3" cellspacing="0">
     <tr>
        <td colspan="3" style="height: 40px;">
           <div class="progress" style="height: 40px;">
             <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="50"
             aria-valuemin="0" aria-valuemax="100" style="width:0%; height: 40px;">
               칼로리
             </div>
           </div>
         </td>   
      </tr>
     <!-- 7 -->
      <tr>
       <td style="width: 33.3%;">
          <div class="progress" style="height: 40px;">
            <div id="carbo" class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="50"
            aria-valuemin="0" aria-valuemax="100" style="width:0%; height: 40px;">
              탄수화물
               </div>
          </div>
       </td>
       <td style="width: 33.3%;">
          <div class="progress" style="height: 40px;">
               <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="50"
                  aria-valuemin="0" aria-valuemax="100" style="width:0%; height: 40px;">
                 지방
               </div>
          </div>
       </td>   
       <td style="width: 33.3%;">
             <div class="progress" style="height: 40px;">   
                  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="50"
                     aria-valuemin="0" aria-valuemax="100" style="width:0%; height: 40px;">
                    단백질
                  </div>
             </div>
       </td>      
    </tr>
    <!-- 8 -->
    <tr>
       <td colspan="3" class="text-center">
          <input type="button" value="식단보기" onclick="location.href='/foodary/JSP_diet/showDiet.jsp'"/>
          <input type="button" value="이벤트테스트" onclick="changeWidth()"/>
          <input type="submit" value="저장"/>
       </td>
    </tr>
   
   </table>
   </form>
</body>
</html>
