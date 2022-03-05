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

	int exp1 = Integer.parseInt(request.getParameter("exp1"));
	String exp2 = request.getParameter("exp2");
	int exp3 = Integer.parseInt(request.getParameter("exp3"));
	int exp4 = 0;

	if(exp2.equals("+")){
		exp4 = exp1 + exp3;
	} else if (exp2.equals("-")){
		exp4 = exp1 - exp3;
	} else if (exp2.equals("*")){
		exp4 = exp1 * exp3;
	} else {
		exp4 = exp1 / exp3;
	}
		
	request.setAttribute("exp1", exp1);
	request.setAttribute("exp2", exp2);
	request.setAttribute("exp3", exp3);
	request.setAttribute("exp4", exp4);
	
	request.getRequestDispatcher("ELCalV2.jsp").forward(request, response);
%>


</body>
</html>