<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제어문 사용</title>
</head>
<body>
	<%
		Map<String,Integer> scores = new HashMap<>();
		scores.put("korean",85);
		scores.put("english",72);
		scores.put("math",90);
		scores.put("science",100);
		// out.print(scores);
	%>
	
	<table border = "1">
		<%
		Iterator<String> iter = scores.keySet().iterator();
		while(iter.hasNext()){
			String subject = iter.next();
		%>
		
		<tr>
			<th>
				<%
				if(subject.equals("korean")){
					out.print("국어");
				} else if(subject.equals("english")){
					out.print("영어");
				} else if(subject.equals("math")){
					out.print("수학");
				} else if(subject.equals("science")){
					out.print("과학");
				}
				%>
			</th>
			<td><%= scores.get(subject) %></td>
		</tr>
		<%
		}
		%>	
	</table>
</body>
</html>