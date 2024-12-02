<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><% if(request.getParameter("type").equals("time")){out.print("시간");}else{out.print("날짜");} %></title>
</head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<body>
		<% 
			Date now = new Date();
			String mention = "";
			
			if(request.getParameter("type").equals("time")){
				SimpleDateFormat sdf = new SimpleDateFormat("현재 시간은 H시 m분 s초 입니다.");
				mention = sdf.format(now);

			} else{
				SimpleDateFormat sdf = new SimpleDateFormat("오늘 날짜는 yyyy년 M월 d일 입니다.");
				mention = sdf.format(now);
			}
		%>
	<div class = "container">
		<div class = "display-4"><%= mention%></div>
	</div>
</body>
</html>