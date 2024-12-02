<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01</title>
</head>
<body>
	<h1>Ex01</h1>
	
	<!-- HTML 주석 : 소스보기에서 보인다 -->
	<%-- JSP 주석 : 소스보기에서 보이지 않는다 --%>
	
	<%
		// scriptlet
		
		int sum = 0;
		for (int i = 1; i < 11; i++){
			sum += i;
		}
	
	%>
	
	<b>합계: </b>
	<input type="text" value = "<%=sum %>">
	<br>
	
	<%!
		// 선언문 - 클래스와 비슷
		int num = 150;
	
		String getHelloWorld(){
			return "Hello world!";
		}
	%>
	
	<%= getHelloWorld() %>
	<%= num + 230 %>
	
	<%
		List<String> list = new ArrayList<>();
		
	%>
</body>
</html>