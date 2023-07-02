function addData() {
  var selectedRadio = document.querySelector('input[name="food"]:checked');
  if (selectedRadio) {
    var parentRow = selectedRadio.closest('tr');
    var data1 = parentRow.querySelector('td:nth-child(1)').innerHTML.trim();
    var data2 = parentRow.querySelector('td:nth-child(2)').innerHTML.trim();
    var data3 = parentRow.querySelector('td:nth-child(3)').innerHTML.trim();
    var data4 = parentRow.querySelector('td:nth-child(4)').innerHTML.trim();
    var data5 = parentRow.querySelector('td:nth-child(5)').innerHTML.trim();
    var data6 = parentRow.querySelector('td:nth-child(6)').innerHTML.trim();

    // 선택한 데이터를 URL 매개변수로 전달하여 페이지 이동
    window.location.href = 'foodWrite.jsp?data2=' + encodeURIComponent(data2);
  }
}

function foodPlus() {
	
	 // 새로운 <tr> 요소 생성
  var newRow = document.createElement('tr');
  
  // <tr> 요소 내부 HTML 설정
  newRow.innerHTML = `
    <td colspan="2" class="text-center">
      <label for="foodName">음식이름</label>
    </td>
    <td colspan="2" class="text-center">
      <input type="text" name="food" value="<%= data2 %>"/>   
    </td>
    <td colspan="1" class="text-center">
      <label for="totalcalorie">칼로리</label>
    </td>
    <td colspan="2" class="text-center" id="totalcalorie">
      <input type="text" id="totalcalorie" name="totalcalorie" style="width: 95%;"/>      
    </td>
    <td colspan="1">
      <label for="carbo">탄수화물</label>
    </td>
    <td colspan="1"class="text-center">
      <input type="text" name="carbo" style="width: 95%;"/>   
    </td>
    <td colspan="1">
      <label for="protein">단백질</label>
    </td>
    <td colspan="1">
      <input type="text" id="protein" name="" style="width: 95%;"/>   
    </td>
    <td colspan="1" class="text-center">
      <label for="province">지방</label>
    </td>
    <td colspan="1" align="center">
      <input type="text" id="province" name="province" style="width: 95%;"/>   
    </td>
    <td colspan="1" align="center">
      <button type="button" onclick="location.href='./foodListDirect.jsp'">확인</button> 
    </td>
  `;
  
  // 새로운 <tr> 요소를 테이블에 추가
  var tableBody = document.getElementById('tableBody');
  tableBody.appendChild(newRow);
}
    /*  $('#foodName').val(data2);
      // form 제출
      //document.getElementById('myForm').submit();
	  document.getElementById('wfoodName').value();*/