<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 로그인 폼, 달력</title>
<style type="text/css">
	tr {
		height: 30px;
	}
	
	th {
		font-size: 10pt;
		width: 30px;
		text-align: center;
	}
	th#sunday {
		color: red;
	}
	th#saturday {
		color: blue;
	}
	td {
	    font-size: 10pt;
		text-align: center;
	}
	td.sun {
		color: red;
	}
	td.sat {
		color: blue;
	}
	.button {
		background: white;
		border: 0;
	}
	button {
		background: white;
		border: 0;
	}
</style>
</head>
<body>
	<form action="loginOK.jsp" method="post">
	    <table width="300px;" cellpadding="5" cellspacing="5" align="center">
	       <tr>
	          <th style="text-align: center; font-size: 20pt; padding-right: 40px;">
	         	 <label for="id">ID: </label>
	         	 <input type="text" name="id" width="10px" style="width: 150px; height: 25px; border-left:0; border-right:0; border-top:0; border-bottom:5;">
	          </th>
	       </tr>
	       <tr>
	          <th style="text-align: center; font-size: 20pt; padding-right: 40px;">
	             <label for="password">PW: </label>
	             <input id="password" type="text" name="password" style="width: 150px; height: 25px; border-left:0; border-right:0; border-top:0; border-bottom:5;">
	          </th>
	       </tr>
	       <tr>
	          <td style="text-align: center; padding-right: 45px; padding-top: 10px;">
	        	 <button type="button" onclick="location.href='register.jsp'" style="background: none; border: 0;">
	        	 	<span style="background: lavender; color:black; font-size: 25pt;">회원가입</span>
	        	 </button>
	             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	             <button type="submit" style="background: none; border: 0;">
	             	<span style="background: lavender; color:black; font-size: 25pt;">로그인</span>
	             </button>
	          </td>
	       </tr>
	    </table>
	 </form>
</body>
</html>