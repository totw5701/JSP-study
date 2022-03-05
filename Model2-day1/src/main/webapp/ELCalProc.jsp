<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>결과보기</h2>
		
	식 ${param.exp1 } ${param.exp2 } ${param.exp3 }
	
	결과 <br>
	<%
	String exp2 = request.getParameter("exp2");
	
	if(exp2.equals("+")){
	%> 
	
	결과는 ${param.exp1 + param.exp3 }
	
	<%} else if (exp2.equals("-")){%>
	
	결과는 ${param.exp1 - param.exp3 }
	
	<%} else if (exp2.equals("*")){ %>
	
	결과는 ${param.exp1 * param.exp3 }
	
	<%} else { %>
	
	결과는 ${param.exp1 / param.exp3 }
	
	<%} %>
</body>
</html>