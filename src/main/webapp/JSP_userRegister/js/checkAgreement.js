
//	회원 탈퇴 시 안내 페이지 첫번째에서 안내 사항에 동의해야 넘어가는 함수
function checkAgreement() {
  if (document.getElementById('agreeCheckbox').checked) {
    location.href = 'unregisterPw.jsp';
  } else {
    alert('안내 사항에 동의하셔야 합니다.');
  }
}

//	회원 탈퇴 시 비밀번호가 맞으면 넘어가는 함수
function unregisterChk() {
	let password = $('#password').val();
	let passwordChk = $('#passwordChk').val();
	if(password != passwordChk) {
		 alert('비밀번호가 일치하지 않습니다.');
	} else {
		location.href = 'unregisterChk2.jsp';
	
	}
}

//	비밀번호 일치여부 실시간 반영 함수
function passwordCheckFunction() {
	let password = $('#password').val();
	let passwordChk = $('#passwordChk').val();
	if(password != passwordChk) {
		$('#passwordCheckMessage').html('비밀번호가 일치하지 않습니다.');

	} else {
		$('#passwordCheckMessage').html('');
	
	}
}