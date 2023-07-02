<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 재확인</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<script type="text/javascript" src="./js/jquery-3.7.0.js"></script>
<script type="text/javascript" src="./js/bootstrap.js"></script>
<script type="text/javascript" src="./js/checkAgreement.js"></script> 
</head>
<body>
<h2>비밀번호 재확인</h2>
<h5>안전한 푸드어리 사용을 위해 비밀번호를 다시 한 번 입력해 주세요.</h5>

<div class="container" style="margin-top: 20px;">
	<form>
		<table width="350" border="1" cellpadding="5" cellspacing="0">
			<tr>
				<th style="vertical-align: middle;">비밀번호</th>
				<td colspan="2">
					<input 
						id="password" 
						type="text" 
						name="password" 
						placeholder="비밀번호를 입력하세요." 
						autocomplete="off" 
						onkeyup="passwordCheckFunction()"
						/>
				</td>
			</tr>
			<tr>
				<th style="vertical-align: middle;">비밀번호 확인</th>
				<td colspan="2">
					<input 
						id="passwordChk" 
						type="password" 
						name="passwordChk" 
						placeholder="비밀번호를 입력하세요." 
						autocomplete="off" 
						onkeyup="passwordCheckFunction()"
						/>
						
					<h5 id="passwordCheckMessage" style="color: red; font-weight: bold;"></h5>
				</td>
			</tr>
		<tr>
		<th colspan="2">
			<button type="button" onclick="unregisterChk()">확인</button> 
		</th>
	</tr>
		</table>
	</form>
</div>


</body>
</html>





