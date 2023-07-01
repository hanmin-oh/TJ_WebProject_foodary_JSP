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
      console.log(data2);
    }
      $('#foodName').val(data2);
      // form 제출
      //document.getElementById('myForm').submit();
  }