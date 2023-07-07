
/* 테이블 추가 함수
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
} */


/*  window.onload = function() {
    var foodNameInput = document.getElementById("dietFoodName");
    
    // foodName 값이 null이면 value를 빈 문자열로 설정
    if (foodNameInput.value === "null") {
      foodNameInput.value = "";
    }
  }*/
 
// 이벤트가 발생했을 때 실행되는 함수
/*function changeWidth() {
	console.log('아~~!');
  var myDiv = document.getElementById("kcalGraph");
  let a = 20;
  let b = 10;
  
  myDiv.style.width = (a + b) + "%"; // 너비 값을 변경
}*/


//단일 음식 그래프 변화 함수 (완성)
/*
$(document).ready(function() {
		console.log('아~~!');
	  var dietKcal = document.getElementById("dietKcal").value;
	  var dietCarbs = document.getElementById("dietCarbs").value;
	  var dietProtein = document.getElementById("dietProtein").value;
	  var dietFat = document.getElementById("dietFat").value;
	    console.log(dietKcal);
	    console.log(dietKcal);
	    console.log(dietKcal);
	    console.log(dietKcal);
	  
	  var kcalGraph = document.getElementById("kcalGraph");
	  var carbsGraph = document.getElementById("carbsGraph");
	  var fatGraph = document.getElementById("fatGraph");
	  var proteinGraph = document.getElementById("proteinGraph");
	  
	  kcalGraph.style.width = dietKcal + "%";// 너비 값을 변경
	  carbsGraph.style.width = dietCarbs + "%";// 너비 값을 변경
	  fatGraph.style.width = dietProtein + "%";// 너비 값을 변경
	  proteinGraph.style.width = dietFat + "%";// 너비 값을 변경
	  
 });*/



//그래프 이동 배열형태 (완성)

$(document).ready(function() {
	var kcalElements = document.getElementsByClassName("kcals");
	var carbsElements = document.getElementsByClassName("carbs");
	var proteinElements = document.getElementsByClassName("proteins");
	var fatElements = document.getElementsByClassName("fats");
	
	var dietKcals = [];
	var dietCarbs = [];
	var dietProteins = [];
	var dietFats = [];
	
	// 각 태그의 값을 배열에 저장
	for (var i = 0; i < kcalElements.length; i++) {
	  var kcalValue = kcalElements[i].querySelector("input[name='dietKcal']").value;
	  var carbsValue = carbsElements[i].querySelector("input[name='dietCarbs']").value;
	  var proteinValue = proteinElements[i].querySelector("input[name='dietProtein']").value;
	  var fatValue = fatElements[i].querySelector("input[name='dietFat']").value;
	  
	  dietKcals.push(kcalValue);
	  dietCarbs.push(carbsValue);
	  dietProteins.push(proteinValue);
	  dietFats.push(fatValue);
	}

	console.log(dietKcals);     // ["100", "200", "300"]
	console.log(dietCarbs);    // ["50", "60", "70"]
	console.log(dietProteins); // ["20", "30", "40"]
	console.log(dietFats);     // ["10", "15", "20"]
	  
	var kcalSum = 0;
	var carbsSum  = 0;
	var proteinSum  = 0;
	var fatSum  = 0;
	
	for (var i = 0; i < dietKcals.length; i++) {
	  kcalSum += Number(dietKcals[i]);
	  carbsSum += Number(dietCarbs[i]);
	  proteinSum += Number(dietProteins[i]);
	  fatSum += Number(dietFats[i]);
	}
	
	
	var kcalGraph = document.getElementById("kcalGraph");
	var carbsGraph = document.getElementById("carbsGraph");
	var fatGraph = document.getElementById("fatGraph");
	var proteinGraph = document.getElementById("proteinGraph");
	
	kcalGraph.style.width = kcalSum + "%";// 너비 값을 변경
	carbsGraph.style.width = carbsSum + "%";// 너비 값을 변경
	fatGraph.style.width = proteinSum + "%";// 너비 값을 변경
	proteinGraph.style.width = fatSum + "%";// 너비 값을 변경
	
	// 날짜와 시간 input 요소에 값 설정
	//document.getElementById('dietWriteDate').value = dietWriteDate;
	//document.getElementById('dietWriteTime').value = dietWriteTime;
 });
 
 
function updateVOValues() {
    var userFoodName = document.getElementsByName("dietFoodName")[0].value;
    var kcal = document.getElementsByName("dietKcal")[0].value;
    var carbs = document.getElementsByName("dietCarbs")[0].value;
    var protein = document.getElementsByName("dietProtein")[0].value;
    var fat = document.getElementsByName("dietFat")[0].value;
    var userFoodTime = document.getElementById("dietWriteTime").value;
    var userFoodDate = document.getElementById("dietWriteDate").value;
    console.log(userFoodTime);
    console.log(userFoodDate );
    console.log(carbs);
    // Assign values to the VO object's properties
    var vo = {
      userFoodName: userFoodName,
      userKcal: parseFloat(kcal),
      userCarbs: parseFloat(carbs),
      userProtein: parseFloat(protein),
      userFat: parseFloat(fat),
      userFoodTime: userFoodTime
    };
    
    // Redirect to foodWriteInsert.jsp with query parameters
   var url = 'foodWriteInsert.jsp' +
      '?userFoodName=' + encodeURIComponent(userFoodName) +
      '&userKcal=' + encodeURIComponent(kcal) +
      '&userCarbs=' + encodeURIComponent(carbs) +
      '&userProtein=' + encodeURIComponent(protein) +
      '&userFat=' + encodeURIComponent(fat) +
      '&userFoodTime=' + encodeURIComponent(userFoodTime) +
      '&userFoodDate=' + encodeURIComponent(userFoodDate);
    location.href = url;
  }
  
/*function goFoodList() {
  var userFoodTime = document.getElementById("dietWriteTime").value;
  var userFoodDate = document.getElementById("dietWriteDate").value;
	 var url = 'foodList.jsp?' +
 	'&userFoodTime=' + encodeURIComponent(userFoodTime) +
    '&userFoodDate=' + encodeURIComponent(userFoodDate);
    location.href = url;
} */