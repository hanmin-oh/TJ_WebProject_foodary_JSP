<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 성공 완료</title>
</head>
<body>

<%-- 
<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String email = request.getParameter("email");
	String height = request.getParameter("height");
	String age = request.getParameter("age");
	String registerWeight1 = request.getParameter("registerWeight1"); // 현재 체중
	String registerWeight2 = request.getParameter("registerWeight2"); // 목표 체중
	String ip = request.getRemoteAddr();
	
			
			Connection conn = DBUtill.getMysqlConnection();
			String sql = "SELECT * FROM memolist WHERE idx = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
%> 
--%>

<table width="500" border="1" cellpadding="5" cellspacing="0">
	<div>
		<b>목표 칼로리를 계산해 드렸어요!</b><br/>
		<b>${vo.name}님의 일일 권장 섭취량은 ${vo.kcal} kcal 에요!</b>
	</div><br/>
	<tr>
		<th width="200px;">칼로리</th>	
			<td><%-- <%=rs.getkcal("kcal")%> --%></td>
	</tr>
	<tr>
		<th width="200px;">탄수화물</th>	
		<td>
			
		</td>
	</tr>
	<tr>
		<th width="200px;">단백질</th>	
		<td>
			
		</td>
	</tr>
	<tr>
		<th width="200px;">지방</th>	
		<td>
			
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="로그인 하러 가기" onclick="location.href='mainLoginForm()'"/> 
		</td>
	</tr>
</table>

</body>
</html>