<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>음식 목록</title>
<script type="text/javascript" src="./js/foodView.js"></script> 
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
<div class="dietContent_title">
	<b><i class="bi bi-cup-straw"></i>음식 넣기</b>
</div>
   <br/>
   <!-- 4 -->
   <form>
   <table  width="1000" align="center" border="1" cellpadding="7" cellspacing="0">
	   <tr>
	      <th class="text-center">
	         <label for="memo">번호</label>
	      </th>
	      <th class="text-center">
	         <label for="memo">음식이름</label>
	      </th>
	      <th class="text-center">
	         <label for="memo">칼로리(kcal)</label>
	      </th>
	      <th class="text-center">
	         <label for="memo">탄수화물(g)</label>
	      </th>
	      <th class="text-center">
	         <label for="memo">단백질(g)</label>
	      </th>
	      <th class="text-center">
	         <label for="memo">지방(g)</label>
	      </th>
	      <th class="text-center">
	         선택
	      </th>
	   </tr>
	   <fmt:requestEncoding value="UTF-8"/>
	   <!-- list.jsp에서 request 영역에 저장한 freeboardList에서 1페이지 분량의 글을 꺼내온다. -->
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
	         <input type="radio" value="선택" name="food"/>      
	      </td>
	   </tr>
	   </c:forEach>
		<!-- 페이지 이동 버튼 -->
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
				<button type="button" onclick="addData()">넣기</button>
				<button type="button" onclick="location.href='foodWrite.jsp'">테스트</button>
		   	</td>
	   	</tr>
    	</table>
   	</form>
</body>
</html>