<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<center>
<h2> 회원 가입 양식 </h2>

<form action="Mproc2" method="post">
	
<table width="600" border="1" bordercolor="pink">

	<tr height="50">
		<td width="150" align="center"> 아이디 </td>
		<td width="450"><input type="text" name="id"/></td>
	</tr>

	<tr height="50">
		<td width="150" align="center"> 패스워드 </td>
		<td width="450"><input type="password" name="password"/></td>
	</tr>
	
	<tr height="50">
		<td width="150" align="center"> 이메일 </td>
		<td width="450"><input type="email" name="email"/></td>
	</tr>
	
	<tr height="50">
		<td width="150" align="center"> 전화번호 </td>
		<td width="450"><input type="tel" name="tel"/></td>
	</tr>

	<tr height="50">
		<td width="150" align="center"> 주소 </td>
		<td width="450"><input type="text" name="address"/></td>
	</tr>
	
	<tr height="50">
		<td colspan="2" align="center"><input type="submit" value="회원가입"></td>
	</tr>


</table>

</form>




</center>

</body>
</html>