<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>식단 보기</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<style type="text/css">

	.dietContent_title {
		float: left;
		width: 100%;
		height: 100px;
		line-height: 100px;
		text-align: center;
		background-color: #dedede;
		font-size: 35px;
	}

	table {
		margin: 0 auto;
	}
	
	td, th {
		height: 50px;
	}

</style>
</head>
<body>

<!-- 헤더 파일 -->	

<div class="dietContent_title">
	<b><i class="bi bi-cup-straw"></i>식단 보기</b>
</div>
<div class="diet">
<table width="1500" align="center" border="1" cellpadding="10" cellspacing="0">
	<!-- 1 -->
	<tr>
		<th colspan="2">
			<label for="ateDate">일시</label>
		</th>
		<th colspan="8">
			<input type="text" id="ateDate" name="ateDate" style="width: 98%; height: 50%;"/>
		</th>
	</tr>
	<!-- 2 -->
	<tr>
		<th>
			<label for="food">먹은 음식</label>
		</th>
		<td align="center">
			<input id="food" type="text" name="food" style="width: 95%; height: 50%;"/>		
		</td>
		<th>
			<label for="totalcalorie">칼로리</label>
		</th>
		<td align="center">
			<input type="text" id="totalcalorie" name="totalcalorie" style="width: 95%; height: 50%;"/>		
		</td>
		<th>
			<label for="carbo">탄수화물</label>
		</th>
		<td align="center">
			<input type="text" id="carbs" name="carbs" style="width: 95%; height: 50%;"/>	
		</td>
		<th>
			<label for="protein">단백질</label>
		</th>
		<td align="center">
			<input type="text" id="protein" name="" style="width: 95%; height: 50%;"/>	
		</td>
		<th>
			<label for="province">지방</label>
		</th>
		<td align="center">
			<input type="text" id="province" name="province" style="width: 95%; height: 50%;"/>	
		</td>
	</tr>
	<!-- 3 -->
	<tr>
		<th colspan="2">
			<label for="memo">메모</label>
		</th>
		<th colspan="8">
			<textarea 
				id="memo"
				rows="20" 
				name="memo" 
				style="resize: none; width: 97%; height: 90%; vertical-align: middle;"
				></textarea>
			<!-- 
				<textarea 
					id="content" 
					class="form-control form-control-sm" 
					rows="10" 
					name="content"
					style="resize: none;"></textarea> 
			-->
		</th>
	</tr>
	<!-- 4 -->
	<tr>
		<th colspan="2">사진</th>
		<td colspan="7">
			<input type="file" value="사진 업로드" style="margin-left: 20px;"/>
		</td>
		<th style="width: 150px;">
			<input type="button" value="업로드 완료!" style="width: 100px; height: 30px;" onclick=""/>			
		</th>
	</tr>
	<!-- 5 -->
	<tr>
		<th colspan="10">
			<input type="button" value="수정하기" onclick="location.href='foodWrite.jsp'" style="width: 100px; height: 30px;"/>&nbsp;&nbsp;	
			<input type="button" value="삭제하기" style="width: 100px; height: 30px;"/>&nbsp;&nbsp;
			<input type="button" value="목록보기" style="width: 100px; height: 30px;"/>&nbsp;&nbsp;
			<input type="button" value="이미지로 저장" style="width: 100px; height: 30px;"/>			
		</th>
	</tr>
</table>
</div>

<!-- 풋터 파일 -->	

</body>
</html>