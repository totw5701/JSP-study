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

<form action="proc.do" method="post">
<table width="500" border="1" bordercolor="black">
	<tr height="40">
		<td width="150" align="center"> 아이디 </td>
		<td width="350" align="center"> <input type="text" name="id" placeholder="아이디"/> </td>
	</tr>

	<tr height="40"> 
		<td width="150" align="center"> 패스워드 </td>
		<td width="350" align="center"> <input type="password" name="pass1" placeholder="pwd"/> </td>
	</tr>
	
	<tr height="40">
		<td width="150" align="center"> 패스워드 확인 </td>
		<td width="350" align="center"> <input type="password" name="pass2" placeholder="pwd 확인"/> </td>
	</tr>
	
	<tr height="40">
		<td width="150" align="center"> 이메일 </td>
		<td width="350" align="center"> <input type="email" name="email" placeholder="email"/> </td>
	</tr>
	
	<tr height="40">
		<td width="150" align="center"> 전화번호 </td>
		<td width="350" align="center"> <input type="tel" name="tel" placeholder="tel"/> </td>
	</tr>
	
	<tr height="40">
		<td width="150" align="center"> 당신의 관심분야 </td>
		<td width="350" align="center"> 
			<input type="checkbox" id="camping" name="hobby" value="camping"> 
			<label for="camping"> 캠핑 </label>
			<input type="checkbox" id="hicking" name="hobby" value="hicking"> 
			<label for="hicking"> 등산 </label>
			<input type="checkbox" id="movie" name="hobby" value="movie"> 
			<label for="movie"> 영화 </label>
			<input type="checkbox" id="book" name="hobby" value="book"> 
			<label for="book"> 독서 </label>
		</td>
	</tr>

	<tr height="40">
		<td width="150" align="center"> 당신의 직업은 </td>
		<td width="350" align="center"> 
			<select name="job">
				<option value="teacher">교사</option>
				<option value="soldier">군인</option>
				<option value="programmer">프로그래머</option>
			</select>
		</td>
	</tr>

	<tr height="40">
		<td width="150" align="center"> 당신의 연령은 </td>
		<td width="350" align="center"> 
			<input type="radio" id="age1" name="age" value="10"/>
			<label for="age1"> 10대 </label>
			<input type="radio" id="age2" name="age" value="20"/>
			<label for="age2"> 20대 </label>
			<input type="radio" id="age3" name="age" value="30"/>
			<label for="age3"> 30대 </label>
			<input type="radio" id="age4" name="age" value="40"/>
			<label for="age4"> 40대 </label> 
		</td>
	</tr>
	
	<tr height="40">
		<td width="150" align="center"> 하고싶은말 </td>
		<td width="350" align="center"> <textarea name="info" rows="3" cols="35"></textarea> </td>
	</tr>

	<tr height="40">
		<td colspan="2" align="center"> 
			<input type="submit" value="회원 가입" />
		</td>
	</tr>

</table>
</form>
</center>


</body>
</html>