<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Melong</title>
<style>
	header {height: 80px;}
	div > nav {height: 60px;}
	footer {height: 60px;}
	section {min-height: 400px;}
</style>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</head>
<body>
	<%
	// 아티스트 정보 

	    Map<String, Object> artistInfo = new HashMap<>();
	    artistInfo.put("name", "아이유");
	    artistInfo.put("debute", 2008);
	    artistInfo.put("agency", "EDAM엔터테인먼트");
	    artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");
		
	    String name = String.valueOf(artistInfo.get("name"));
	    String debute = String.valueOf(artistInfo.get("debute"));
	    String agency = String.valueOf(artistInfo.get("agency"));
	    String photo = String.valueOf(artistInfo.get("photo"));
		
	// 아이유 노래 리스트 
	    List<Map<String, Object>> musicList = new ArrayList<>();

	    Map<String, Object> musicInfo = new HashMap<>();
	    musicInfo.put("id", 1);
	    musicInfo.put("title", "팔레트");
	    musicInfo.put("album", "Palette");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
	    musicInfo.put("time", 217);
	    musicInfo.put("composer", "아이유");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);

	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 2);
	    musicInfo.put("title", "좋은날");
	    musicInfo.put("album", "Real");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
	    musicInfo.put("time", 233);
	    musicInfo.put("composer", "이민수");
	    musicInfo.put("lyricist", "김이나");
	    musicList.add(musicInfo);

	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 3);
	    musicInfo.put("title", "밤편지");
	    musicInfo.put("album", "Palette");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
	    musicInfo.put("time", 253);
	    musicInfo.put("composer", "제휘,김희원");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);

	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 4);
	    musicInfo.put("title", "삐삐");
	    musicInfo.put("album", "삐삐");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
	    musicInfo.put("time", 194);
	    musicInfo.put("composer", "이종훈");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);

	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 5);
	    musicInfo.put("title", "스물셋");
	    musicInfo.put("album", "CHAT-SHIRE");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
	    musicInfo.put("time", 194);
	    musicInfo.put("composer", "아이유,이종훈,이채규");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);

	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 6);
	    musicInfo.put("title", "Blueming");
	    musicInfo.put("album", "Love poem");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
	    musicInfo.put("time", 217);
	    musicInfo.put("composer", "아이유,이종훈,이채규");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);
	    
	    String no = request.getParameter("no");
	    String search = request.getParameter("search");
	%>
	
	<div class = "container">
		<header class = "d-flex align-items-center">
			<h2><b><a href = "/lesson02/quiz10.jsp" style = "text-decoration: none;" class = "text-success mr-5">Melong</a></b></h2>
			<form method = "get" action = "/lesson02/quiz10_result.jsp" class = "d-flex w-100 ml-5">
				<input type = "text" name = "search" class = "form-control col-3" value = "<%if(search == null){}else{out.print(search);}%>">
				<button type = "submit" class = "btn btn-success ml-2">검색</button>
			</form>
		</header>
		<nav class = "d-flex align-items-center">
			<ul class = "nav">
				<li class = "nav-item"><a href = "#" class = "nav-link font-weight-bold text-dark">멜롱차트</a></li>
				<li class = "nav-item"><a href = "#" class = "nav-link font-weight-bold text-dark">최신음악</a></li>
				<li class = "nav-item"><a href = "#" class = "nav-link font-weight-bold text-dark">장르음악</a></li>
				<li class = "nav-item"><a href = "#" class = "nav-link font-weight-bold text-dark">멜롱DJ</a></li>
				<li class = "nav-item"><a href = "#" class = "nav-link font-weight-bold text-dark">뮤직어워드</a></li>
			</ul>
		</nav>
		<%
	    for(int i = 0; i < musicList.size(); i++){
	   
	    	if(String.valueOf(musicList.get(i).get("id")).equals(no) || String.valueOf(musicList.get(i).get("title")).equals(search)){
	    	int min = Integer.valueOf(String.valueOf(musicList.get(i).get("time"))) / 60;
	    	int second = Integer.valueOf(String.valueOf(musicList.get(i).get("time"))) % 60;
	   
	    %>
		<section>
			<h4 class = "my-3"><b>곡 정보</b></h4>
			<div class = "border border-success w-100 p-3 d-flex">
				<img src = "<%= musicList.get(i).get("thumbnail") %>" width = "200">
				<div class = "ml-3">
					<div class = "display-4"><%= musicList.get(i).get("title") %></div>
					<div class = "my-2 text-success font-weight-bold"><%= musicList.get(i).get("singer") %></div>
					
					<div class = "d-flex">
						<div class = "mr-3">
							<div><small>앨범</small></div>
							<div><small>재생시간</small></div>
							<div><small>작곡가</small></div>
							<div><small>작사가</small></div>
						</div>
					
						<div>
							<div><small><%= musicList.get(i).get("album") %></small></div>
							<div><small><%= min %> : <%= second %></small></div>
							<div><small><%= musicList.get(i).get("composer") %></small></div>
							<div><small><%= musicList.get(i).get("lyricist") %></small></div>
						</div>
					</div>
				</div>
			</div>
			<h4 class = "my-3"><b>가사</b></h4> <hr>
			<span>가사 정보 없음</span>
		</section>
		<%
	    	}
	    }
		%>
		<footer class = "">
			<hr>
			<small class = "text-muted d-flex align-items-center">Copyright 2024 © Melong All Rights Reserved</small>
		</footer>
	</div>
</body>
</html>