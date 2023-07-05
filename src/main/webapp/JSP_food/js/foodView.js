function addData() {
  var selectedRadio = document.querySelector('input[name="food"]:checked');
  if (selectedRadio) {
    var parentRow = selectedRadio.closest('tr');
    var foodName = parentRow.querySelector('td:nth-child(2)').innerHTML.trim();
    var kcal = parentRow.querySelector('td:nth-child(3)').innerHTML.trim();
    var carbs = parentRow.querySelector('td:nth-child(4)').innerHTML.trim();
    var protein = parentRow.querySelector('td:nth-child(5)').innerHTML.trim();
    var fat = parentRow.querySelector('td:nth-child(6)').innerHTML.trim();
	console.log(foodName + kcal + carbs + protein + fat);
    // 선택한 데이터를 URL 매개변수로 전달하여 페이지 이동
 	window.location.href =  'foodWrite.jsp?foodName=' + encodeURIComponent(foodName) +
    '&kcal=' + encodeURIComponent(kcal) +
    '&carbs=' + encodeURIComponent(carbs) +
    '&protein=' + encodeURIComponent(protein) +
    '&fat=' + encodeURIComponent(fat);
  }
}

    /*  $('#foodName').val(data2);
      // form 제출
      //document.getElementById('myForm').submit();
	  document.getElementById('wfoodName').value();*/