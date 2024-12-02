<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>체격 조건</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</head>
<body>
	<div class = "container">
		<h1>체격조건 입력</h1>
		<form method = "get" action = "/lesson02/quiz03_result.jsp" class = "d-flex">
			<div class = "d-flex"><input type = "text" name = "height" class = "form-control col-10" placeholder = "키를 입력하세요."> cm</div>
			<div class = "d-flex"><input type = "text" name = "weight" class = "form-control col-10" placeholder = "몸무게를 입력하세요."> kg</div>
			<button type = "submit" class = "btn btn-info">계산</button>
		</form>
	</div>
	
</body>
</html>