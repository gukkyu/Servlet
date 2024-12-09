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
section > div > div{border: 2px solid; border-color: orange;}
footer{height: 80px;}
#nullImage{height: 200px; width: 300px;}
#nickname{color: orange;}
</style>
</head>
<body>
<%
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	String insertQuery = "select `sellor`.*, `used_goods`.* from `sellor`" + 
	"join `used_goods` on `sellor`.id = `used_goods`.sellor_id;";
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
			<div class = "d-flex flex-wrap justify-content-center">
			<%
			while(result.next()){
				
			%>
				<div class = "m-3 p-3">
				<%
				if(result.getString("goodsImageUrl") == null){
				%>
					<div id = "nullImage" class = "d-flex justify-content-center align-items-center text-muted"><b>이미지 없음</b></div>
				<%
				} else{
				%>
					<div><img width = "300" height = "200" src = "<%= result.getString("goodsImageUrl") %>"></div>
					
				<%
				}
				%>
					<div class = "mt-2"><b><%= result.getString("title") %></b></div>
					<div class = "text-muted"><%= result.getInt("price") %> 원</div>
					<div id = "nickname"><%= result.getString("nickname") %></div>					
				</div>
			<%
			}
			%>
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