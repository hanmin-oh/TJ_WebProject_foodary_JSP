 function addData() {
  var selectedRadio = document.querySelector('input[name="food"]:checked');
    if (selectedRadio) {
      var parentRow = selectedRadio.closest('tr');
      var data1 = parentRow.querySelector('td:nth-child(1)').innerHTML;
      var data2 = parentRow.querySelector('td:nth-child(2)').innerHTML;
      var data3 = parentRow.querySelector('td:nth-child(3)').innerHTML;
      var data4 = parentRow.querySelector('td:nth-child(4)').innerHTML;
      var data5 = parentRow.querySelector('td:nth-child(5)').innerHTML;
      var data6 = parentRow.querySelector('td:nth-child(6)').innerHTML;

      // 가져온 데이터를 alert으로 확인
      alert(data1 +  data2 + data3 + data4 + data5 + data6);
    }
  }