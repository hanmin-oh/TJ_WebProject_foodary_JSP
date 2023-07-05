// 이벤트 리스너 등록
/*document.addEventListener("DOMContentLoaded", function() {
	});*/
/*  var myDiv = document.getElementById("carbo");
  myDiv.addEventListener("click", changeWidth);*/

 
// 이벤트가 발생했을 때 실행되는 함수
/*function changeWidth() {
	console.log('아~~!');
  var myDiv = document.getElementById("carbo");
  myDiv.style.width = "50%"; // 너비 값을 변경
}*/

$(document).ready(function() {
    var foodName = "<%= foodName %>";
    if (foodName === null) {
      $("#dietFoodName").val("");
    }
  });
 
function foodPlus() {
	
	 // 새로운 <tr> 요소 생성
  var newRow = document.createElement('tr');
  
  // <tr> 요소 내부 HTML 설정
  newRow.innerHTML = `
    <td colspan="2" class="text-center">
         <label for="foodName">음식이름</label>
      </td>
      
      <td colspan="2" class="text-center">
    	   <input type="text" name="food" value=""/>   
      </td>
      
      <td colspan="1" class="text-center">
         <label for="totalcalorie">칼로리</label>
      </td>
      
      <td colspan="2" class="text-center" id="kcal">
         <input type="text" name="kcal" value=""/>      
      </td>
      
      <td colspan="1">
         <label for="carbo">탄수화물</label>
      </td>
      
      <td colspan="1"class="text-center">
         <input type="text" name="carbs" value=""/>      
      </td>
      
      <td colspan="1">
         <label for="protein">단백질</label>
      </td>
      
      <td colspan="1">
        <input type="text" name="protein" value=""/>       
      </td>
      
      <td colspan="1" class="text-center">
         <label for="province">지방</label>
      </td>
      
      <td colspan="1" align="center">
         <input type="text" name="fat" value=""/>      
      </td>
      <td colspan="1" align="center">
          <button  type="button" onclick="location.href='./foodListDirect.jsp'">확인</button> 
      </td>
  `;
  
  // 새로운 <tr> 요소를 테이블에 추가
  var tableBody = document.getElementById('tableBody');
  tableBody.appendChild(newRow);
} 
/*  window.onload = function() {
    var foodNameInput = document.getElementById("dietFoodName");
    
    // foodName 값이 null이면 value를 빈 문자열로 설정
    if (foodNameInput.value === "null") {
      foodNameInput.value = "";
    }
  }*/
  
  
function foodCheck() {
	  console.log('아~~!');
	  var carbo = document.getElementById("carbo");
	  let a = 20
	  let b = 10;
	  
	  carbo.style.width = (a + b).toString() + "%";// 너비 값을 변경
	  	 // 새로운 <tr> 요소 생성
	  var newRow = document.createElement('tr');
	  
  }
  
  function updateVOValues() {
    var writeFoodName = document.getElementsByName("dietFoodName")[0].value;
    var kcal = document.getElementsByName("dietKcal")[0].value;
    var carbs = document.getElementsByName("dietCarbs")[0].value;
    var protein = document.getElementsByName("dietProtein")[0].value;
    var fat = document.getElementsByName("dietFat")[0].value;
    var writeFoodTime = document.getElementById("dietWriteTime").value;
    var writeFoodDate = document.getElementById("dietWriteDate").value;
    console.log(writeFoodName);
    console.log(writeFoodTime );
    console.log(writeFoodDate );
    console.log(carbs );
    // Assign values to the VO object's properties
    var vo = {
      writeFoodName: writeFoodName,
      writeKcal: parseFloat(kcal),
      writeCarbs: parseFloat(carbs),
      writeProtein: parseFloat(protein),
      writeFat: parseFloat(fat),
      writeFoodTime: writeFoodTime
    };
    
    // Redirect to foodWriteInsert.jsp with query parameters
   var url = 'foodWriteInsert.jsp' +
      '?writeFoodName=' + encodeURIComponent(writeFoodName) +
      '&writeKcal=' + encodeURIComponent(kcal) +
      '&writeCarbs=' + encodeURIComponent(carbs) +
      '&writeProtein=' + encodeURIComponent(protein) +
      '&writeFat=' + encodeURIComponent(fat) +
      '&writeFoodTime=' + encodeURIComponent(writeFoodTime) +
      '&writeFoodDate=' + encodeURIComponent(writeFoodDate);
    location.href = url;
  }
  
