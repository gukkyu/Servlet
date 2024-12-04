<%@page import="java.util.*"%>
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
	<%
	List<Map<String, Object>> list = new ArrayList<>();
    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
    list.add(map);
    
    String menu = request.getParameter("menu");
    String checkbox = request.getParameter("checkbox");
	%>
	
	<div class = "container">
		<h1 class = "text-center">검색결과</h1>
		<table class = "table">
			<thead>
				<tr>
					<th class = "text-center">메뉴</th>
					<th class = "text-center">상호</th>
					<th class = "text-center">별점</th>
				</tr>
			</thead>
			<tbody>
			
			<%
			for (int i = 0; i < list.size(); i++){
				if(list.get(i).get("menu").equals(menu)){
					if(checkbox != null){
						if(Double.valueOf(list.get(i).get("point").toString()) > 4.0){
							
						
			%>	
				
				<tr>
					<td class = "text-center"><%= list.get(i).get("name") %></td>
					<td class = "text-center"><%= list.get(i).get("menu") %></td>
					<td class = "text-center"><%= list.get(i).get("point") %></td>
					
				</tr>
			<%
						}
					} else {
							%>
				<tr>
					<td class = "text-center"><%= list.get(i).get("name") %></td>
					<td class = "text-center"><%= list.get(i).get("menu") %></td>
					<td class = "text-center"><%= list.get(i).get("point") %></td>
					
				</tr>
							<%
					
					}
				}
			}
			%>
			</tbody>
		</table>
	</div>
</body>
</html>