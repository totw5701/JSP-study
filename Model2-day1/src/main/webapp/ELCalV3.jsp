<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2> 계산기 </h2>
	<form action="ELCalV3.jsp" method="post">
	
		<table width="60">
		
			<tr height="40">
				<td align="center" width="100"><input type="text" name="exp1" value=${param.exp1 }> </td>
				<td align="center" width="100">
					<select name="exp2" value=${param.exp2 }>
						<option value="+"> + </option>
						<option value="-"> - </option>
						<option value="*"> * </option>
						<option value="/"> / </option>
					</select> 
				</td>
				<td align="center" width="100"><input type="text" name="exp3" value=${param.exp3 }> </td>
				<td align="center" width="20"> = </td>
				<td align="center" width="100">
				
					<%
					String exp2 = request.getParameter("exp2");
					//null처리
					if(exp2 == null){
						exp2 = "+";
					}
					
					if(exp2.equals("+")){
					%> 
					
					<input type="text" name="exp4" value="${param.exp1 + param.exp3  }">
					
					<%} else if (exp2.equals("-")){%>
					
					<input type="text" name="exp4" value="${param.exp1 - param.exp3  }">
					
					<%} else if (exp2.equals("*")){ %>
					
					<input type="text" name="exp4" value="${param.exp1 * param.exp3  }">
					
					<%} else { %>
					
					<input type="text" name="exp4" value="${param.exp1 / param.exp3  }">
					
					<%} %>
				
				</td>
				<td align="center" width="100"><input type="submit" value="결과보기"> </td>
			</tr>
		
		</table>
	
	</form>


</body>
</html>