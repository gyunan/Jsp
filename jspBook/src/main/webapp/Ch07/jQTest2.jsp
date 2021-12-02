<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">	
	<title>jQuery 실렉터와 메소드를사용한 엘리먼트의 내용변셩</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script>
		$(document).ready(function() {
			$("#b1").click(function() {//<button id="b1">엘리먼트를 클릭하면 자동 실행
				$("#b2").text($("p").text());//두 번째 버튼의 레이블 변경
			});
			
			$("#b2").click(function() {//<button id="b1">엘리먼트를 클릭하면 자동 실행
				//이미지 표시
				$("#display").html("<img src='myFace.png' border='0'/>");
			});
		});
	
	
	
	</script>

</head>
<body>
	<p>이미지표시</p>
	<button id="b1">버튼레이블 변경</button>
	<div id="display"></div>
	<button id="b2">버튼</button>
</body>
</html>