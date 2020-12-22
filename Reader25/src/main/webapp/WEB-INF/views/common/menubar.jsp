<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.wrap{background: #F5715C; width: 80%; height: 50px; margin:auto; min-width: 1000px;}
	.small-menu{font-size: 10px; height: 20px; padding:0;width:80%; margin:auto;}
	.small-menu ul{margin:0;float: right;}
	.small-menu li{list-style:none; display:inline-block;}
	.small-menu li:hover{font-weight:bolder;}
	.small-menu a{text-decoration: none; color:black;}
	.top_logo{clear:both;}
	.li{border-left: 1px solid black; border-right:1px solid black; padding-right: 5px;padding-left: 5px;}
	.menu{
		background: #F5715C; color: white; text-align: center; font-weight: bold; 
		vertical-align: middle; width: 150px; height: 50px; display: table-cell;
	}
	nav{width: 600px; margin-left: auto; margin-right: auto;}
	.menu:hover {background: beige; color:orangered; font-weight:bold; cursor:pointer;}
</style>
</head>
<body>
	<div class="menubar">
		<div class="small-menu">
			<ul>
				<li><a href="/login.me">로그인</a></li>
				<li class="li"><a href="notice">공지사항</a></li>
				<li><a href="inquiry">문의사항</a></li>
			</ul>
		</div>
		<div class="top_logo">
			<img
				src="${ pageContext.servletContext.contextPath }/images/Logo2.png"
				style="display: block; margin: 0 auto;" width="210" height="45">
		</div>
		
		<br clear="all"> <br>
		<div class="wrap">
			<nav>
				<div class="menu" onclick="goHome();">HOME</div>
				<div class="menu" onclick="goNotice();">토론 게시판</div>
				<div class="menu" onclick="goBoard();">책을 읽고</div>
				<div class="menu" onclick="goThumbnail0();">오늘 의작가</div>
				<div class="menu" onclick="goThumbnail1();">책 사고팔기</div>
			</nav>
		</div>
	</div>
</body>
</html>