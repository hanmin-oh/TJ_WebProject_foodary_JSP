<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 - 권장 영양소</title>
<style type="text/css">
	a {
		text-decoration: none;
		color: black;
	}

</style>
</head>
<script type="text/javascript" src="./js/updateMyCal.js" defer="defer"></script>
<body>

<h2>마이페이지 - 권장 영양소</h2>
<form method="post" name="updateMyCal()">
	<div>
	키: <input id="height" type="text" name="height" style="width: 50px;">&nbsp;cm
	체중: <input id="currentWeight" type="text" name="currentWeight" style="width: 50px;">&nbsp;kg
	나이: <input id="age" type="text" name="age" style="width: 50px;"/>&nbsp;&nbsp;
	<input 
			type="button" 
			value="수정하기"
			name="updateBtn"
			onclick="updateMyCal();"/>
			
	<br/><label><br/>
		Mode: <input id="general" type="radio" name="health" checked="checked"/>건강한 삶
			  <input id="diet" type="radio" name="diet"/>다이어트
	</label>
	</div><br/>

	<table width="500" border="1" cellpadding="5" cellspacing="0">
		<tr>
			<th>칼로리</th>
			<td>
				<label><input id="cal" type="text" name="cal" autocomplete="off" /></label>
			</td>
		</tr>
		<tr>
			<th>탄수화물</th>
			<td>
				<label><input id="calbo" type="text" name="calbo" autocomplete="off" /></label>
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
	

	
</form>
</body>
</html>