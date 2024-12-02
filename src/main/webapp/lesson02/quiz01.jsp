<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz01</title>
</head>
<body>
	<h3>1번</h3>
	<%!
	int getSum(int n){
		int sum = 0;
		for(int i = 0; i <= n; i++){
			sum += i;
		}
		return sum;
	}
	%>
	
	<%=getSum(10) %>
	
	<h3>2번</h3>
	<%
		int[] scores = {81, 90, 100, 95, 80};
		int sum = 0;
		for(int i = 0; i < scores.length; i++){
			sum += scores[i];
		}
		double average = (double)sum / scores.length;
	%>
	
	<%=average %>
	
	<h3>3번</h3>
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		double score = 0;
		double per = 0;
		for(int i = 0; i < scoreList.size(); i++){
			if(scoreList.get(i).equals("O")){
				per += 1;
			}
		}
		score = (double)100 * (per/scoreList.size());
	%>
	<%= score %>
	
	<h3>4번</h3>
	
	<% String birthDay = "20010820";
		String birth = birthDay.substring(0,4);
		int age = 2024 - Integer.valueOf(birth);
	%>
	
	<%= age %>
</body>
</html>