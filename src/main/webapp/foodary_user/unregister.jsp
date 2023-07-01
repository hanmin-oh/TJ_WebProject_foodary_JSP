<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
<script type="text/javascript" src="./js/checkAgreement.js" defer="defer"></script>
</head>
<body>
<h2>탈퇴 안내</h2>
	사용하고 계신 아이디는 탈퇴할 경우 재사용 및 복구가 불가능합니다.<br/>
	<b style="color: red;">탈퇴한 아이디는 본인과 타인 모두 재사용 및 복구가 불가</b>하오니 신중하게 선택하시기 바랍니다.<br/><br/>
	 ※ 푸드어리보다 좋은 앱은 진짜 없습니다.
	<hr style="color: black;">
	
<table width="500" border="1" cellpadding="5" cellspacing="0">
	<tr>
		<th>
			<label>
				<input type="checkbox" id="agreeCheckbox" name="agreeCheckbox"/>
				안내 사항을 모두 확인하였으며, 이에 동의합니다.
			</label>
		</th>
	</tr>
	<tr>
		<th>
			<input id="agreeCheckbox" type="submit" name="agreeCheckbox" value="확인" onclick="checkAgreement(this)"/>
		</th>
	</tr>
</table>


</body>
</html>