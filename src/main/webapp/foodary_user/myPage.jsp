<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 - 회원정보</title>
<style type="text/css">
	a {
		text-decoration: none;
		color: black;
	}

</style>
</head>
<body>

<h2>마이페이지 - 회원정보</h2>
<table width="500" border="1" cellpadding="5" cellspacing="0">
		<tr>
			<th rowspan="5">회원 정보</th>
			<th rowspan="5">
				<a rel="myRecommendCal" href="myRecommendCal.jsp">권장 영양소</a>	
			</th>
			
		</tr>
		<tr>
			<th>이름</th>
			<td>
				<label><input id="name" type="text" name="name" autocomplete="off" /></label>
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
   		 <td colspan="5" align="center">
      		<input type="submit" value="정보 수정"/> 
      		<input type="button" value="회원 탈퇴" onclick="location.href='unregister.jsp'"/> 
   		 </td>
 	 </tr>

</table>
	
	

	
</body>
</html>