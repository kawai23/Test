<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="<%=request.getContextPath()%>/smartedit/js/service/HuskyEZCreator.js"></script>
<style>
section{
	background: rgba(246, 246, 246, 1);
	min-height: 900px;
	width: 80%;
	min-width: 1000px;
	margin:auto;
}
.header-div {
	width: 80%;
	margin: auto;
	max-width: 1100px;
}
.header-div>h2 {
	display: inline-block;
}
.file-div{
	display:inline-block;
	float:right;
	margin-top:40px;
}
.file-div label {
	display: inline-block;
	padding: .5em .75em;
	color: white;
	font-size: 12px;
	line-height: normal;
	vertical-align: middle;
	background-color: rgba(201, 95, 18, 1);
	border-radius: 5px;
	cursor: pointer;
}

.file-div input[type="file"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}

.title-div {
	clear: both;
	width: 80%;
	max-width: 1100px;
	margin: auto;
	margin-top: 10px;
	padding: 0;
}

.title {
	display: inline-block;
	background: rgba(235, 235, 235, 1);
	text-align: center;
	vertical-align: middle;
	width: 50px;
	height: 27px;
	border: 1px solid rgba(235, 235, 235, 1);
	border-radius: 3px 0px 0px 3px;
	color: rgba(85, 83, 83, 1);
}

.title-div>input {
	height: 25px;
	margin-left: -7px;
	width: 91%;
	border: 1px solid rgba(235, 235, 235, 1);
}
.contents{
	width: 80%;
	margin: auto;
	margin-top: 20px;
	max-width: 1100px;
	min-height: 500px;
}
#smart_edit{
	height:500px;
}
.btn-div{
	width: 80%;
	max-width:1100px;
	margin:auto;
}
.btn{
	float: right;
	width: 100px;
	height: 40px;
	margin-top:20px;
	margin-right: 10px;
	background: rgba(255, 195, 152, 1);
	border: none;
}
#submit-btn{
	background:rgba(201, 95, 18, 1);
}
.btn:hover{
	font-weight: bolder;
	color:white;
	cursor: pointer;
}
</style>
</head>
<body>
<%@include file="../common/menubar.jsp" %>
	<section>	
		<div class="header-div">
			<h2>공지사항 작성</h2>
			<div class="file-div">
				<label for="file-input">파일 업로드</label>
				<input type="file" id="file-input">
			</div>
		</div>
		<form id="notice-form">
			<div class="title-div">
				<div class="title">title</div>
				<input type="text" placeholder="제목을 작성하세요">
			</div>
			<div class="contents">
					<textarea name="smart_edit" id="smart_edit" style="width:100%;"></textarea>
			</div>
			<div class="btn-div">
				<button id="submit-btn" class="btn">작성완료</button>
				<input type="reset" class="btn" value="작성취소">
			</div>
		</form>
			<script>
			var oEditors = [];
			//스마트 에디터 생성 함수
			 nhn.husky.EZCreator.createInIFrame({
			      oAppRef :oEditors,
			      elPlaceHolder : "smart_edit", 
			      sSkinURI : "<%=request.getContextPath()%>/smartedit/SmartEditor2Skin.html",
			      fCreator: "createSEditor2"
			});
			$('#submit-btn').click(function(){
				oEditors.getById["smart_edit"].exec("UPDATE_CONTENTS_FIELD",[]);
				
				$('#notice-form').submit();
			});
		</script>
	</section>
	
</body>
</html>