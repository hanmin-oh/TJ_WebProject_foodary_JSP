<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>음식 목록</title>
<<<<<<< HEAD
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="./js/updateFoodView.js" defer="defer"></script> 
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<link rel="stylesheet" href="./css/threeGrid.css"/>
</head>
<body>
<div class="container">
   <div class="header">
      <jsp:include page="./headerAfter.jsp"></jsp:include>
   </div>
  	<div class="main" align="center">
<%
		request.setCharacterEncoding("UTF-8");
		
		String userFoodDate = request.getParameter("userFoodDate");
		String userFoodTime = request.getParameter("userFoodTime");
		
		// 가져온 값을 세션에 저장
		session.setAttribute("userFoodDate", userFoodDate);
		session.setAttribute("userFoodTime", userFoodTime);
		request.setAttribute("userFoodDate", userFoodDate);
		request.setAttribute("userFoodTime", userFoodTime);
%>

		<div class="dietContent_title">
			<span style="background: #fafcd9; font-size: 30pt; font-weight: 900;">음식 검색</span>
		</div>
		   <br/>
		   <!-- 4 -->
		<form id="myForm" action="updateFoodList.jsp" method="POST">
				<input type="hidden" id="userFoodDate" name="userFoodDate" value="${userFoodDate}" />
		<input type="hidden" id="userFoodTime" name="userFoodTime" value="${userFoodTime}" />
		   <table  width="1000" align="center" border="1" cellpadding="7" cellspacing="0">
				<thead>
				   <tr style="height: 60px;">
			   		<th colspan="7" class="text-center"">
				         <span style="background: #baffda; font-size: 35px; font-weight: 900;">음식 이름</span> : 
				         <input type="text" id="foodName" name="foodName" style="width:50%;" /> 
				          <button type="submit" style="width: 100px; height: 30px;
				          	background: none; border: 0; cursor: pointer;">
				          	<span style="background: lavender; font-size: 30px; font-weight: 900;">검색</span>
				          </button>     
			      	</th>
				   </tr>
					<tr class="info">
						<th style="text-align: center; width: 100px;">
							<span style="background: #baffda; font-size: 30px; font-weight: 900;">번호</span>
						</th>
						<th style="text-align: center; width: 250px;">
							<span style="background: #baffda; font-size: 30px; font-weight: 900;">음식 이름</span>
						</th>
						<th style="text-align: center; width: 150px;">
							<span style="background: #baffda; font-size: 30px; font-weight: 900;">칼로리</span>
						</th>
						<th style="text-align: center;">
							<span style="background: #baffda; font-size: 30px; font-weight: 900;">탄수화물</span>
						</th>
						<th style="text-align: center;">
							<span style="background: #baffda; font-size: 30px; font-weight: 900;">단백질</span>
						</th>
						<th style="text-align: center;">
							<span style="background: #baffda; font-size: 30px; font-weight: 900;">지방</span>
						</th>
						<th style="text-align: center; width: 100px;">
							<span style="background: #baffda; font-size: 30px; font-weight: 900;">선택</span>
						</th>
					</tr>
				</thead>
				<fmt:requestEncoding value="UTF-8"/>
			   <!-- foodList.jsp에서 request 영역에 저장한 foodList에서 1페이지 분량의 글을 꺼내온다. -->
			   <tbody id="ajaxTable">
		       	<c:set var="list" value="${foodList.list}"/>
			   <c:forEach var="vo" items="${list}">
				<tr>
			      <td class="text-center">
			         ${vo.idx}
			      </td>
			      <td class="text-center">
			         ${vo.foodName}
			      </td>
			      <td class="text-center">
			        ${vo.kcal}
			      </td>
			      <td class="text-center">
			          ${vo.carbs}
			      </td>
			      <td class="text-center">
			          ${vo.protein}
			      </td>
			      <td class="text-center">
			           ${vo.fat}
			      </td>
			      <td class="text-center">
			         <input type="checkbox" value="선택" name="foodName"/>      
			      </td>
			   </tr>
			   </c:forEach>
			   </tbody>
			<!-- 페이지 이동 버튼 --> 
				<c:set var="list" value="${foodList.list}"/>
				<tr style="height: 60px;">
					<td colspan="7" align="center">
						<!-- 처음으로 -->
						<c:if test="${foodList.currentPage > 1}">
							<button 
								class='button button1' 
								type="button" 
								title="첫 페이지로 이동합니다." 
								onclick="location.href='?currentPage=1'"
								style="background: none; border: 0; cursor: pointer;"
							>◀◀</button>
						</c:if>
						<c:if test="${foodList.currentPage <= 1}">
							<button 
								class='button button2' 
								type="button" 
								disabled="disabled" 
								title="이미 첫 페이지 입니다."
								style="background: none; border: 0; cursor: pointer;"
							>◀◀</button>
						</c:if>
						
						<!-- 10페이지 앞으로 -->
						<c:if test="${foodList.startPage > 1}">
							<button 
								type="button" 
								title="이전 10페이지로 이동합니다." 
								onclick="location.href='?currentPage=${foodList.startPage - 1}'"
								style="background: none; border: 0; cursor: pointer;"
							>◀</button>
						</c:if>
						<c:if test="${foodList.startPage <= 1}">
							<button 
								type="button" 
								disabled="disabled" 
								title="이미 첫 10페이지 입니다."
								style="background: none; border: 0; cursor: pointer;" 
							>◀</button>
						</c:if>
						
						<!-- 페이지 이동 버튼 -->
						<c:forEach var="i" begin="${foodList.startPage}" end="${foodList.endPage}" step="1">
							<c:if test="${foodList.currentPage == i}">
								<button type='button' disabled='disabled' style="background: none; border: 0; cursor: pointer; font-size: 25pt;">
									${i}
								</button>
							</c:if>
							<c:if test="${foodList.currentPage != i}">
								<button 
									type='button' 
									title="${i}페이지로 이동합니다."
									onclick="location.href='?currentPage=${i}&userFoodDate=${userFoodDate}&userFoodTime=${userFoodTime}'"
									style="background: none; border: 0; cursor: pointer;"
								>
									<span style="background: lavender; font-size: 25pt;">${i}</span>
								</button>
							</c:if>
						</c:forEach>
						
						<!-- 10페이지 뒤로 -->
						<c:if test="${foodList.endPage < foodList.totalPage}">
							<button 
								class='button button1' 
								type="button" 
								title="다음 10페이지로 이동합니다." 
								onclick="location.href='?currentPage=${foodList.endPage + 1}'"
								style="background: none; border: 0; cursor: pointer;"
							>▶</button>
						</c:if>
						<c:if test="${foodList.endPage >= foodList.totalPage}">
							<button 
								class='button button2' 
								type="button" 
								disabled="disabled" 
								title="이미 마지막 10페이지 입니다."
								style="background: none; border: 0; cursor: pointer;"
							>▶</button>
						</c:if>
						
						<!-- 마지막으로 -->
						<c:if test="${foodList.currentPage < foodList.totalPage}">
						<button
							type="button" 
							title="마지막 페이지로 이동합니다." 
							onclick="location.href='?currentPage=${foodList.totalPage}'"
							style="background: none; border: 0; cursor: pointer;"
						>▶▶</button>
						</c:if>
						<c:if test="${foodList.currentPage >= foodList.totalPage}">
							<button 
								type="button" 
								disabled="disabled" 
								title="이미 마지막 페이지 입니다."
								style="background: none; border: 0; cursor: pointer;"
							>▶▶</button>
						</c:if>
					</td>
				</tr> 
		        <tr style="height: 60px;">
				   	<td colspan="8" align="center">
						<button type="button" onclick="addData()" style="background: none; border: 0; cursor: pointer;">
							<span style="background: lavender; font-size: 30px; font-weight: 900;">저장</span>
						</button>
				   	</td>
			   	</tr>
		    	</table>
		   </form>
   	</div>
  	<div class="footer">
      <jsp:include page="./footerAfter.jsp"></jsp:include>
   </div>
</div>	   
=======
<script type="text/javascript" src="./js/updateFoodView.js" defer="defer"></script> 
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<style type="text/css">

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
	}

</style>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

String userFoodDate = request.getParameter("userFoodDate");
String userFoodTime = request.getParameter("userFoodTime");

// 가져온 값을 세션에 저장
session.setAttribute("userFoodDate", userFoodDate);
session.setAttribute("userFoodTime", userFoodTime);
	
  
%>

<div class="dietContent_title">
	<b><i class="bi bi-cup-straw"></i>음식 넣기</b>
</div>
   <br/>
   <!-- 4 -->
<form id="myForm" action="updateFoodList.jsp" method="POST">
   <table  width="1000" align="center" border="1" cellpadding="7" cellspacing="0">
		<thead>
		   <tr>
	   		<td colspan="2" class="text-center" style="font-size: 13px;">
		         <label for="food">음식 검색</label>
	      	</td>
	      	<td colspan="4" align="center">
		         <input type="text" id="foodName" name="foodName" style="width:95%;" /> 
	      	</td>
		    <td colspan="1" align="center">
		          <input class='button button1' type="submit" value="검색" style="width: 100px; height: 30px;">     
				<!--   <button  type="button" onclick="searchFunction()">검색</button>  -->
			</td>
		   </tr>
			<tr class="info">
				<th style="text-align: center;">번호</th>
				<th style="text-align: center;">음식이름</th>
				<th style="text-align: center;">칼로리</th>
				<th style="text-align: center;">탄수화물</th>
				<th style="text-align: center;">단백질</th>
				<th style="text-align: center;">지방</th>
				<th style="text-align: center;">선택</th>
			</tr>
		</thead>
		<fmt:requestEncoding value="UTF-8"/>
	   <!-- foodList.jsp에서 request 영역에 저장한 foodList에서 1페이지 분량의 글을 꺼내온다. -->
	   <tbody id="ajaxTable">
       	<c:set var="list" value="${foodList.list}"/>
	   <c:forEach var="vo" items="${list}">
		<tr>
	      <td class="text-center">
	         ${vo.idx}
	      </td>
	      <td class="text-center">
	         ${vo.foodName}
	      </td>
	      <td class="text-center">
	        ${vo.kcal}
	      </td>
	      <td class="text-center">
	          ${vo.carbs}
	      </td>
	      <td class="text-center">
	          ${vo.protein}
	      </td>
	      <td class="text-center">
	           ${vo.fat}
	      </td>
	      <td class="text-center">
	         <input type="checkbox" value="선택" name="foodName"/>      
	      </td>
	   </tr>
	   </c:forEach>
	   </tbody>
	<!-- 페이지 이동 버튼 --> 
		<c:set var="list" value="${foodList.list}"/>
		<tr>
			<td colspan="7" align="center">
				<!-- 처음으로 -->
				<c:if test="${foodList.currentPage > 1}">
					<button 
						class='button button1' 
						type="button" 
						title="첫 페이지로 이동합니다." 
						onclick="location.href='?currentPage=1'"
					>처음</button>
				</c:if>
				<c:if test="${foodList.currentPage <= 1}">
					<button 
						class='button button2' 
						type="button" 
						disabled="disabled" 
						title="이미 첫 페이지 입니다."
					>처음</button>
				</c:if>
				
				<!-- 10페이지 앞으로 -->
				<c:if test="${foodList.startPage > 1}">
					<button 
						class='button button1' 
						type="button" 
						title="이전 10페이지로 이동합니다." 
						onclick="location.href='?currentPage=${foodList.startPage - 1}'"
					>이전</button>
				</c:if>
				<c:if test="${foodList.startPage <= 1}">
					<button 
						class='button button2' 
						type="button" 
						disabled="disabled" 
						title="이미 첫 10페이지 입니다."
					>이전</button>
				</c:if>
				
				<!-- 페이지 이동 버튼 -->
				<c:forEach var="i" begin="${foodList.startPage}" end="${foodList.endPage}" step="1">
					<c:if test="${foodList.currentPage == i}">
						<button class='button button2' type='button' disabled='disabled'>${i}</button>
					</c:if>
					<c:if test="${foodList.currentPage != i}">
						<button 
							class='button button1' 
							type='button' 
							title="${i}페이지로 이동합니다."
							onclick="location.href='?currentPage=${i}'"
						>${i}</button>
					</c:if>
				</c:forEach>
				
				<!-- 10페이지 뒤로 -->
				<c:if test="${foodList.endPage < foodList.totalPage}">
					<button 
						class='button button1' 
						type="button" 
						title="다음 10페이지로 이동합니다." 
						onclick="location.href='?currentPage=${foodList.endPage + 1}'"
					>다음</button>
				</c:if>
				<c:if test="${foodList.endPage >= foodList.totalPage}">
					<button 
						class='button button2' 
						type="button" 
						disabled="disabled" 
						title="이미 마지막 10페이지 입니다."
					>다음</button>
				</c:if>
				
				<!-- 마지막으로 -->
				<c:if test="${foodList.currentPage < foodList.totalPage}">
				<button
					class='button button1'  
					type="button" 
					title="마지막 페이지로 이동합니다." 
					onclick="location.href='?currentPage=${foodList.totalPage}'"
				>마지막</button>
				</c:if>
				<c:if test="${foodList.currentPage >= foodList.totalPage}">
					<button 
						class='button button2' 
						type="button" 
						disabled="disabled" 
						title="이미 마지막 페이지 입니다."
					>마지막</button>
				</c:if>
			</td>
		</tr> 
         <tr>
		   	<td colspan="8" align="right">
				<button type="button" onclick="addData()">저장</button>
		   	</td>
	   	</tr>
    	</table>
   </form>
>>>>>>> 380c6b0f1cd91977b12ce67469aa21c6e4e491db
</body>
</html>