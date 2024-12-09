<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "com.test.common.MysqlService" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>website url</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
	
</head>
<body>
<%
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	String selectQuery = "select * from `website`";
	ResultSet result = ms.select(selectQuery);
%>
	<div class = "container">
		<table class = "table text-center">
			<thead>
				<tr>
					<th>사이트</th>
					<th>사이트 주소</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
			<%
			while(result.next()){
			%>
				<tr>
					<td><%= result.getString("name") %></td>
					<td><%= result.getString("url") %></td>
					<td><a href = "/lesson03/quiz01_delete?id=<%= result.getInt("id") %>" class = "btn btn-danger">삭제</a></td>
				</tr>
			<%
			}
			%>
			</tbody>
		</table>
		<h1>즐겨찾기 추가</h1>
		<form method = "post" action = "/lesson03/insert_quiz01">
			사이트 이름 : <input type = "text" name = "name" class = "my-2 form-control col-4">
			사이트 주소 : <input type = "text" name = "url" class = "my-2 form-control col-8">
			<button type = "submit" class = "btn btn-success">추가하기</button>
		</form>
	</div>

<%
	ms.disconnect();
%>
</body>
</html>