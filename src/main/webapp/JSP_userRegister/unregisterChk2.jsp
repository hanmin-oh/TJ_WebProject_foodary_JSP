<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴 신청</title>
</head>
<body>
<h2>회원탈퇴 신청</h2>
<h5>그동안 푸드어리를 이용해 주셔서 감사합니다.</h5>

<h3>탈퇴아이디 확인</h3>
	<table width="350" border="1" cellpadding="5" cellspacing="0">
		<tr>
			<th style="width: 100px;">아이디</th>	
			<td>${vo.id}</td>
		</tr>
		<tr>
			<th>이름</th>
			<td>${vo.name}</td>
		</tr>
	</table>
	<h5>푸드어리를 탈퇴하는 이유는 무엇인가요?</h5>
         <input id="service" type="radio" name="unregister" checked="checked"/>서비스 기능 불편&nbsp;&nbsp;&nbsp;&nbsp;
         <input id="safe" type="radio" name="unregister"/>개인정보 및 보안 우려<br/>
         <input id="nouse" type="radio" name="unregister"/>푸드어리 이용 안 함
         <input id="complain" type="radio" name="unregister"/>푸드어리 앱 불만<br/><br/>
    <div>
   	 	<input type="submit" value="탈퇴확인" onclick="location.href='unregisterEnd.jsp'"/> 
   	 	<input type="submit" value="탈퇴취소" onclick="location.href='foodaryMainPageAfter.jsp'"/> 
    </div>
</body>
</html>