function idCheckFunction() {
	let id = $('#id').val();
	// console.log(id);

	$.ajax({
		type: 'POST',
		url: './UserRegisterCheck',
		data: {
			id: id
		},
		success: function (res) {
			switch (res) {
				case '1':
					$('#messageType').html('에러 메시지');
					$('#messageContent').html('아이디를 입력하고 중복 체크 버튼을 누르세요.');
					$('#errorMessage').html('아이디를 입력하고 중복 체크 버튼을 누르세요.');
					$('#messageCheck').attr('class', 'modal-content panel-warning');
					$('#id').val('');
					break;
				case '2':
					$('#messageType').html('에러 메시지');
					$('#messageContent').html('사용중인 아이디 입니다.');
					$('#errorMessage').html('사용중인 아이디 입니다.');
					$('#messageCheck').attr('class', 'modal-content panel-warning');
					$('#id').val('');
					break;
				case '3':
					$('#messageType').html('성공 메시지');
					$('#messageContent').html('사용 가능한 아이디입니다.');
					$('#errorMessage').html('사용 가능한 아이디입니다.');
					$('#messageCheck').attr('class', 'modal-content panel-success');
					break;
			
			}
			// 회원 저장 모달 창을 띄운다.
			$('#messageModal').modal('show');
		
		},
		error: e => console.log('요청 실패: ' + e.status)
	});
	
}

function userRegister() {
	let username = $('#username').val();
	let id = $('#id').val();
	let password = $('#password').val();
	let passwordCheck = $('#passwordCheck').val();
	let email = $('#email').val();
	let gender = $('input[name=gender]:checked').val();
	let height = $('#height').val();
	let age = $('#age').val();
	let currentWeight = $('#currentWeight').val();
	let goalWeight = $('#goalWeight').val();
	let active = $("select[name='active']").val();
	let state = $('input[name=state]:checked').val();

 	console.log(username, id, password, passwordCheck, email, gender, height, age, currentWeight, goalWeight, active, state);
	
//	jQuery ajax
	$.ajax({
		type: 'POST', 
		url: './UserRegister', 
		data: {
			username: username,
			id: id,
			password: password,
			passwordCheck: passwordCheck,
			email: email,
			gender: gender,
			height: height,
			age: age,
			currentWeight: currentWeight,
			goalWeight: goalWeight,
			active: active,
			state: state
		},
		
		// ajax 요청이 성공하면 실행할 콜백 함수
		success: function (res) {
			 console.log("요청 성공: ", res);
			
			// 다음 데이터를 입력받기 위해 텍스트 상자의 내용을 지운다.
			$('#username').val('');
			$('#id').val('');
			$('#password').val('');
			$('#passwordCheck').val('');
			$('#age').val('');
			$('#email').val('');
			$('#height').val('');
			$('#currentWeight').val('');
			$('#goalWeight').val('');
			
			// 서블릿 응답에 따른 메시지를 출력한다.
			switch (res) {
				case '1':
					$('#messageType').html('에러 메시지');
					$('#messageContent').html('모든 내용을 입력하세요.');
					$('#messageCheck').attr('class', 'modal-content panel-warning');
					break;
				case '2':
					$('#messageType').html('에러 메시지');
					$('#messageContent').html('비밀번호가 일치하지 않습니다.');
					$('#errorMessage').html('비밀번호가 일치하지 않습니다.');
					$('#messageCheck').attr('class', 'modal-content panel-warning');
					break;
				case '3':
					$('#messageType').html('성공 메시지');
					$('#messageContent').html('회원가입에 성공했습니다.');
					$('#messageCheck').attr('class', 'modal-content panel-success');
					break;
				case '4':
					$('#messageType').html('에러 메시지');
					$('#messageContent').html('이미 존재하는 회원입니다.');
					$('#errorMessage').html('이미 존재하는 회원입니다.');
					$('#messageCheck').attr('class', 'modal-content panel-warning');
					break;
			}
			// 회원 저장 모달 창을 띄운다.
			$('#messageModal').modal('show');
		},
		error: e => console.log('요청 실패: ' + e.status)
	
	});


	
}

//	비밀번호가 일치하는가 확인하는 함수
function passwordCheckFunction() {
	let password = $('#password').val();
	let passwordCheck = $('#passwordCheck').val();
	if(password != passwordCheck) {
		$('#passwordCheckMessage').html('비밀번호가 일치하지 않습니다.');

	} else {
		$('#passwordCheckMessage').html('');
	
	}
}
