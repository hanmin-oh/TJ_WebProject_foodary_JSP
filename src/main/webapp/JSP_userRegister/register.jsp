<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>푸드어리 회원가입</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<link rel="stylesheet" href="./css/bootstrap.css"/>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script type="text/javascript" src="./js/jquery-3.7.0.js"></script>
<script type="text/javascript" src="./js/bootstrap.js"></script>
<script type="text/javascript" src="./js/userRegister.js"></script> 
</head>
<body>


<div>
<form action="registerOK.jsp" method="post">
   <table width="1000" border="1" border-bottom="none" cellpadding="5" cellspacing="0">
		
		<thead>
			<tr class="info">
				<th colspan="3" style="text-align: center;">
					<h3>회원 가입</h3>
				</th>
			</tr>
		</thead>
		 <tr>
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
			<td colspan="3" style="text-align: center;">
				<!-- 아이디 중복 검사 결과 메시지를 출력하는 영역 -->
				<h5 id="idCheckMessage" style="color: purple; font-weight: bold;"></h5>
				<!-- 에러 메시지 결과를 출력하는 영역 -->
				<h5 id="errorMessage" style="color: red; font-weight: bold;">
				</h5>
			</td>
	  </tr>
      <tr>
         <th>
            <label for="password">비밀번호</label>
         </th>
         <td colspan="2">
            <label><input id="password" type="password" name="password" autocomplete="off" onkeyup="passwordCheckFunction()"/></label>
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
      	<td>
            <label><input id="email" type="email" name="email" autocomplete="off"/></label>
         </td>
      </tr>
      <tr>
         <th>
            <label for="gender">성별</label>
         </th>
         <td colspan="2">
            <label>
               <input id="male" type="radio" name="gender" checked="checked" value="남성"/>남성
               <input id="female" type="radio" name="gender" value="여성"/>여성
            </label>
         </td>
      </tr>
      </table>
      <table width="1000" border="1" cellpadding="5" cellspacing="0">
      <tr>
         <th>
            <label for="height">키</label>
            <input id="height" type="text" name="height" autocomplete="off"/>cm
         </th>
         <th>
            <label for="age">나이</label>
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
            <select name="active">
               <option value="많이 앉아있는 경우">많이 앉아있는 경우</option>
               <option value="앉아있는 일이 적은 경우">앉아있는 일이 적은 경우</option>
               <option value="움직임이 많은 경우">움직임이 많은 경우</option>
               <option value="운동 될 움직임을 할 경우">운동 될 움직임을 할 경우</option>
               <option value="매우 많은 운동량">매우 많은 운동량</option>
            </select>
         </td>
      </tr>
      <tr>
         <th>
            <label for="mode">Mode</label>
         </th>
         <td>
            <label>
               <input id="health" type="radio" name="state" checked="checked" value="건강한 삶"/>건강한 삶
               <input id="diet" type="radio" name="state" value="다이어트"/>다이어트
            </label>
         </td>
      </tr>
      <tr>
         <td colspan="2" align="center">
	         <button class="btn btn-primary" type="submit" value="회원가입"></button>
	         <input class="btn btn-primary" type="reset" value="다시쓰기"/> 
         </td>
      </tr>
   </table>
   
   <input type="hidden" name="ip" onclick="userRegister()"/> 
   <%-- <input type="hidden" name="currentPage" value="<%=currentPage%>"/> --%>
</form>
</div>

<div id="messageModal" class="modal fade" role="dialog" aria-hidden="true">
	<div class="vertical-alignment-helper">
		<div class="modal-dialog vertical-align-center">
			<!-- 모달 창의 종류(색상)를 설정한다. -->
			<!-- messageCheck라는 id를 추가하고 class를 제거한다. -->
			<div id="messageCheck">
				<!-- 헤더 -->
				<div class="modal-header panel-heading">
					<button class="close" type="button" data-dismiss="modal">
						<span aria-hidden="true">&times;</span>
						<span class="sr-only">Close</span>
					</button>
					<!-- messageType이라는 id를 추가한다. -->
					<h4 id="messageType" class="modal-title">
						<%-- ${messageType} --%>
					</h4>
				</div>
				<!-- 바디 -->
				<!-- messageContent이라는 id를 추가한다. -->
				<div id="messageContent" class="modal-body">
					<%-- ${messageContent} --%>
				</div>
				<!-- 풋터 -->
				<div class="modal-footer">
					<button class="btn btn-primary" type="button" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>
</div>




</body>
</html>