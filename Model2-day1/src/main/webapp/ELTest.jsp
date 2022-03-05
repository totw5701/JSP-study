<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	//데이터를 출력하는 방법.
	int i = 3;

	out.println("i = " + i);
%>

	
	<p>
	i = <%=i %> 
	<p>
	i > 4 = <%=i > 4%> 
	
	<!-- 
	EL 표현 
	i = ${i } 이런식으로 변수이름으로 바로 출력할 수 는 없다.
	attribute나 paramete등을 JSP파일에서출력할 용도로 사용하 언어.
	세션이나 request객체에 넣어서 사용.
	attribute 출력시 $[attribute name]
	parameter 출력시 ${param.name} or ${paramValue.name[index]}의 형태로 사
	-->
	<p>
	i = ${i }  
	
<%
	request.setAttribute("i", 3);
%>

	<p>
	i = ${i }  
	<p>
	i > 4 = ${i > 4 }  
	<p>
	i = 3 = ${i == 3 }  
	<p>
	i = ${i * 4 }  

</body>
</html>