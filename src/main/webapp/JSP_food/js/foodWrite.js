
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

/* 이벤트 테스트
	function foodCheck() {
	  console.log('아~~!');
	  var carbs = document.getElementById("carbs");
	  let a = 20
	  let b = 10;
	  
	  carbs.style.width = (a + b).toString() + "%";// 너비 값을 변경
  }*/

$(document).ready(function() {
	/*var totalKcal = 0;
	var totalCarbs;
	var totlaProtein;
	var totalFat;*/
  	/*var kcal = document.getElementsByName("dietKcal")[1].value;*/
	/*for (var i = 1; i <5  ;  i++) {
  		totalKcal += document.getElementsByName("dietKcal")[i].value;	
	}*/
	//console.log(totalKcal);
  	//var kcal = kcalElements[i].value;
 /*   var carbs = document.getElementsByName("dietCarbs")[1].value;
    var protein = document.getElementsByName("dietProtein")[1].value;
    var fat = document.getElementsByName("dietFat")[1].value;
   /* console.log(carbs);
    console.log(kcal);
    console.log(protein);
    console.log(fat);*/
	  
	/* kcalGraph.style.width = (kcal).toString() + "px";// 너비 값을 변경
	carbsGraph.style.width = (carbs).toString() + "px";// 너비 값을 변경
	proteinGraph.style.width = (protein).toString() + "px";// 너비 값을 변경
	fatGraph.style.width = (fat).toString() + "px";// 너비 값을 변경*/
	
	
	/*console.log(searchFunction());*/
	// 세션 데이터 가져오기
	/*var dietWriteDate = '<%= session.getAttribute("dietWriteDate") %>';
	var dietWriteTime = '<%= session.getAttribute("dietWriteTime") %>';
	
	// 날짜와 시간 input 요소에 값 설정
	document.getElementById('dietWriteDate').value = dietWriteDate;
	document.getElementById('dietWriteTime').value = dietWriteTime;*/
	
	
	
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
  
function goFoodList() {
  var userFoodTime = document.getElementById("dietWriteTime").value;
  var userFoodDate = document.getElementById("dietWriteDate").value;
	 var url = 'foodList.jsp?' +
 	'&userFoodTime=' + encodeURIComponent(userFoodTime) +
    '&userFoodDate=' + encodeURIComponent(userFoodDate);
    location.href = url;
}
//const searchRequest = new XMLHttpRequest(); 
//ajax 검색 요청 함수
/* function searchFunction() {
	//console.log('이순신');
	//console.log(document.getElementById('food').value);
	
	//XHR객체.open('요청방식' , '요청주소' , 동기방식) , 동기방식: 동기식 => false, 비동기식 => true
	//encodeURIComponent() : 문자열을 유니코드(UTF-8)로 인코딩 한다.
	
	//GET 방식 요청
	let url = '../FoodSearch?name=' + encodeURIComponent(document.getElementById('food').value);
	// console.log(url);
	searchRequest.open('GET' , url , true);
	//send() 함수로 서버에 요청(서블릿 호출)한다.
	// 데이터를 url의 일부인 쿼리 스트링(?~~~)으로 전송할 경우 send() 함수의 인수로 null을 지정한다.
	searchRequest.send(null);
	
	
	//POST 방식 요청
	/*
	let url = '../FoodSearch';	//POST 방식은 url에 쿼리 스트링을 사용하지 않는다. 
	searchRequest.open('POST' , url , true);
	// GET 방식은 정보가 url에 담겨서 넘어가지만 POST 방식은 정보가 헤더에 담겨서 넘어간다. 
	//sertRequestHeader() 함수로 반드시 헤더 정보를 포함시켜야 한다. 
	searchRequest.setRequestHeader('Content-Type' , 'application/x-www-form-urlencoded');
	//데이터를 send() 함수의 인수로 전달한다. 
	searchRequest.send('name=' + encodeURIComponent(document.getElementById('food').value));
	*/
	
	// onreadystatechange를 사용해서 ajax 요청이 완료되면 자동으로 실행할 콜백 함수 이름을 지정한다. 
	/*searchRequest.onreadystatechange = searchProcess;
	
} */

// ajax 요청이 완료되면 실행할 콜백 함수
/*function searchProcess() {
	//console.log('완료');
	
	//XHR 객체의 readyState
/*	0 : 아직 실행되지 않음
	1 : 로딩중
	2 : 로딩됨
	3 : 통신중
	4 : 통신완료*/
	//console.log('readyState : ' + searchRequest.readyState);
	
	/*//XHR 객체의 status
	200 : 수신성공
	3xx : 금지
	4xx : 페이지 없음
	5xx : 서버 오류
	//console.log('status : ' + searchRequest.status);
	*/
	
	//통신이 정상적으로 완료되었음을 확인하고 필요한 작업을 실행한다. 
	/*if (searchRequest.readyState == 4 && searchRequest.status == 200) {
		//console.log('responseText: ' + searchRequest.responseText);
		//서블릿에서 리턴된 문자열을 javascript 객체로 변환시키기 위해 괄호를 붙여서 eval()함수를
		// 실행해서 객체로 저장한다.
		let object = eval('(' + searchRequest.responseText + ')' );
		console.log(object);
		// javascript 객체에서 result 라는 key에 할당된 데이터를 얻어온다. => 화면에 출력할 데이터
		let result = object.result;
		console.log(result);
		
		//서블릿에서 수신된 데이터를 출력하기 위해 <tbody>탤그를 얻어온다. 
		let tbody = document.getElementById('ajaxTable');
		//새로 검색된 데이터가 표시되어야 하므로 이전에 <tbody>태그에 들어있던 내용은 지운다.
		tbody.innerHTML = "";
		//데이터의 개수만큼 반복하며 <tbody> 태그에 행을 만들어 추가한다.
		for(let i = 0 ; i< result.lenght ; i++) {
			let row = tbody.insertRow(i);
			for(let j = 0 ; j<result[i].length ; j++) {
				
				cell.innserHTML = result[i][j].value;
			}
		}
		
	} 
	
}*/

