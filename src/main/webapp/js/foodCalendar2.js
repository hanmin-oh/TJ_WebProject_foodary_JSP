function dayCheck(day) {
//function dayCheck(day) {
  // 데이터 설정
  var year_list = '<%=year_list%>';
  var month_list = '<%=month_list%>';
  var day_list = day;
  
  // 요소 내용 변경
  var h2Element = document.querySelector('h2');
  h2Element.innerHTML = year_list + '-' + month_list + '-' + day_list + ' 식단 목록';
}





///////////////////////////////////이미지 캡쳐////////////////////////////////////
/*
html2canvas(document.querySelector(".diet-table")).then(canvas => {
	const link = document.createElement('a')
	link.download = 'filename'
	link.href = canvas.toDataURL()
    document.body.appendChild(link)
    link.click()
    
});

$('.btnCapture').click(function() {
	screenShot($('.foodCapture'));
});

function screenShot(target) {
	if (target != null && target.length > 0) {
		var t = target[0];
		html2canvas(t).then(function(canvas) {
			var myImg = canvas.toDataURL("image/png");
			myImg = myImg.replace("data:image/png;base64,", "");

			$.ajax({
				type : "POST",
				data : {
					"imgSrc" : myImg
				},
				dataType : "text",
				url : contextPath + "/ImgSaveTest.do",
				success : function(data) {
					console.log(data);
				},
				error : function(a, b, c) {
					alert("error");
				}
			});
		});
	}
}
*/

