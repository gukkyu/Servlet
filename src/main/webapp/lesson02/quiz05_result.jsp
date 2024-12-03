<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</head>
<body>
	<div class = "container">
		<%
			
			String calculate = request.getParameter("calculate");
			String [] calculateArr = calculate.split("[+\\-*/]");
			String mention = "";
			double result = 0;
	
			if (calculateArr.length > 2){
		%>
			<div class = "display-3">계산기의 성능이 구려서</div>
			<div class = "display-3 text-danger">다중연산 불가!</div>
		<%
			}else {
				if (calculate.contains("+")){
					mention = calculateArr[0] + " + " + calculateArr[1] + " = ";
					result = Integer.valueOf(calculateArr[0]) + Integer.valueOf(calculateArr[1]);
				} else if (calculate.contains("-")){
					mention = calculateArr[0] + " - " + calculateArr[1] + " = ";
					result = Integer.valueOf(calculateArr[0]) - Integer.valueOf(calculateArr[1]);
				} else if (calculate.contains("*")){
					mention = calculateArr[0] + " * " + calculateArr[1] + " = ";
					result = Integer.valueOf(calculateArr[0]) * Integer.valueOf(calculateArr[1]);
				} else if (calculate.contains("/")){
					mention = calculateArr[0] + " / " + calculateArr[1] + " = ";
					result = Double.valueOf(calculateArr[0]) / Double.valueOf(calculateArr[1]);
				}
			String resultStr = Double.toString(result);
			if(resultStr.contains(".0")){
				resultStr.substring(0 , resultStr.length() - 2);
			}
		%>
		<h1>계산 결과</h1>
		<div class = "display-3"><%= mention %> <span class = "text-primary"><%= resultStr %></span></div>
		<%
			}
		%>
	</div>
</body>
</html>