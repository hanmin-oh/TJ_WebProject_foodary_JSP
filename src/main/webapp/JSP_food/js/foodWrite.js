// 이벤트 리스너 등록
/*document.addEventListener("DOMContentLoaded", function() {
	});*/
  var myDiv = document.getElementById("carbo");
  myDiv.addEventListener("click", changeWidth);

 
// 이벤트가 발생했을 때 실행되는 함수
function changeWidth() {
	console.log('아~~!');
  var myDiv = document.getElementById("carbo");
  myDiv.style.width = "50%"; // 너비 값을 변경
}

/*
$('.carbo').click(function changeWidth() {
	console.log('아~~!');
  var myDiv = document.getElementById("carbo");
  myDiv.style.width = "50%"; // 너비 값을 변경
});*/

$(document).ready(function() {
    var foodName = "<%= foodName %>";
    if (foodName === null) {
      $("#dietFoodName").val("");
    }
  });
  
/*  window.onload = function() {
    var foodNameInput = document.getElementById("dietFoodName");
    
    // foodName 값이 null이면 value를 빈 문자열로 설정
    if (foodNameInput.value === "null") {
      foodNameInput.value = "";
    }
  }*/