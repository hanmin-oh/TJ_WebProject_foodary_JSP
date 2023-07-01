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
               $('#errorMessage').html('에러: 아이디를 입력하고 중복 체크 버튼을 누르세요.');
               $('#messageCheck').attr('class', 'modal-content panel-warning');
               $('#id').val('');
               break;
            case '2':
               $('#messageType').html('에러 메시지');
               $('#messageContent').html('사용중인 아이디 입니다.');
               $('#errorMessage').html('에러: 사용중인 아이디 입니다.');
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