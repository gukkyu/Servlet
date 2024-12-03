<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</head>
<body>
<div class = "container">
	<div class = "text-center"><h1>장보기 품목</h1></div>
	<table class = "table">
		<thead>
			<tr>
				<th scope = "col" class = "text-center">번호</th>
				<th scope = "col" class = "text-center">품목</th>
			</tr>
		</thead>
		<tbody>
		
	<%
	List<String> goodsList = Arrays.asList(new String[]{ 
		    "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
		});
	
	for(int i = 0; i < goodsList.size(); i++){
		
	
	%>
	
			<tr>
				<th class = "text-center"><%= i + 1 %></th>
				<td class = "text-center"><%= goodsList.get(i) %></td>
			</tr>
	<%
	}
	%>
		</tbody>
	</table>
</div>
</body>
</html>