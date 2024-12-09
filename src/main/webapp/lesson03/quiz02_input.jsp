<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.test.common.MysqlService" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<style>
header{height: 60px; background-color:orange; font-size: 25px;}
div > nav{background-color:orange; height: 50px;}
footer{height: 80px;}
</style>
</head>
<body>
<%
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	String insertQuery = "select * from `sellor`";
	ResultSet result = ms.select(insertQuery);
	
%>
	<div id = "wrap" class = "container">
		<header class = "text-white d-flex align-items-center justify-content-center">
			<b>HONG당무 마켓</b>
		</header>
		<nav>
			<ul class = "nav nav-fill">
				<li class = "nav-item"><a href = "/lesson03/quiz02.jsp" class = "nav-link text-white"><b>리스트</b></a></li>
				<li class = "nav-item"><a href = "/lesson03/quiz02_input.jsp" class = "nav-link text-white"><b>물건 올리기</b></a></li>
				<li class = "nav-item"><a href = "#" class = "nav-link text-white"><b>마이 페이지</b></a></li>
			</ul>
		</nav>
		<section class = "d-flex">
			<div class = "w-100">
				<div class = "display-4 mt-5">물건 올리기</div>
				<form method = "post" action = "/lesson03/InsertQuiz02">
				<div class = "d-flex justify-content-between my-4">
					<select class = "form-control form-select col-2" name = "id">
						<option>-아이디 선택-</option>
				<%
				while(result.next()){
				%>
						<option value = "<%= result.getInt("id") %>"><%= result.getString("nickname") %></option>
				<%
				}
				%>
					</select>
					<input type = "text" class = "form-control col-6 mr-5" name = "title" placeholder = "제목">
					
					<div class="input-group col-2 px-0">
  						<input type="text" class="form-control" placeholder="가격" name = "price">
  							<div class="input-group-append">
    							<span class="input-group-text">원</span>
  							</div>
					</div>
				</div>
				<textarea class = "w-100" rows = "12" name = "description"></textarea>
				<div class="input-group w-100 px-0 my-4">
					<div class="input-group-prepend">
    					<span class="input-group-text">이미지 url</span>
  					</div>
  					<input type="text" class="form-control" name = "url">
				</div>
				
				<button type = "submit" class = "btn btn-success w-100 text-center">저장</button>
				</form>
			</div>
		</section>
		<footer class = "d-flex justify-content-center align-items-center">
			<div><small class = "text-muted">Copyright © HONG 2024. All Rights Reserved.</small></div>
		</footer>
	</div>
<%
	ms.disconnect();
%>
</body>
</html>