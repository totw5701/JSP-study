<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 변수 선언 -->
<c:set var="i" value="4"/>
	<!-- request.setAttribute("i", 4); 이거랑 같은 거. -->

<c:set var="sum" value="0"/>

<!-- if문 -->
	<c:if test="${ i > 3 }">
	
	true
	
	</c:if>
	<br>
<!-- 반복문 -->
<c:forEach begin="1" end="10"> <!-- 자동으로 1씩 증가함 -->

	점심시간입니다1 <br>

</c:forEach>

<c:forEach var="i" begin="1" end="10" step="${i=i+1 }"> 

	점심시간입니다2 <br>

</c:forEach>

<c:forEach var="i" begin="1" end="10"> 

	<c:set var="sum" value="${sum=sum+i }" />

</c:forEach>

sum = ${sum }



</body>
</html>