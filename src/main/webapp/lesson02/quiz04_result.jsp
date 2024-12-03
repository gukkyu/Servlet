<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과</title>
</head>
<body>
	<%
		double cm = Integer.valueOf(request.getParameter("cm"));
		double inch = cm * 2.54;
		double yard = cm / 91.44;
		double feet = cm / 30.48;
		double meter = cm / 100;
		String [] lengthArr = request.getParameterValues("length");
	%>
	<h1>길이 변환 결과</h1>
	<h2><%= cm %>cm</h2> <hr>
	<h2>
	<%
	for (int i = 0; i < lengthArr.length; i++){
		if(lengthArr[i].equals("인치")){
			out.print(inch + lengthArr[i] + "<br>");
		}else if(lengthArr[i].equals("야드")){
			out.print(yard + lengthArr[i] + "<br>");
		}else if(lengthArr[i].equals("피트")){
			out.print(feet + lengthArr[i] + "<br>");
		}else if(lengthArr[i].equals("미터")){
			out.print(meter + lengthArr[i] + "<br>");
		}
	}	
	%></h2>
	
	
	
</body>
</html>