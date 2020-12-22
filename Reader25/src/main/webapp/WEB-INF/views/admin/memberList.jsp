<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body{
		background:rgba(246, 246, 246, 1);
	}
	section{
		display:inline-block;
		min-height: 700px;
		position: relative;
		margin-left: 10px;
		width: 80%;
	}
	.content{
		clear: both;
		margin:auto;
		margin-top: 10px;
		padding: 12px;
		background: white;
		border-radius: 3px;
		box-shadow: 3px 3px 3px 1px lightgray;
		max-width: 1100px;
	}
	.title {
		font-size: 20px;
		font-weight: 400;
		margin: 15px;
		padding-bottom: 10px;
		border-bottom: 2px solid gray;
	}
	.mem-list-table{
		text-align: center;
		padding: 5px;
		width: 100%;
		border-collapse: collapse;
	}
	.tr-header th{
		background: rgba(234, 234, 234, 1);
		height: 20px;
		border: 1px solid rgba(215, 215, 215, 1);
	}
	.mem-list-table td{
		font-size: 13px;
		height: 20px;
		border-bottom: 1px solid lightgray; 
	}
	.paging-div {
		width: 250px;
		margin: auto;
		margin-top: 30px;
	}
	.paging-div>button {
		width: 30px;
		height: 30px;
		color: rgba(85, 83, 83, 1);
		font-size: 15px;
		background: rgba(229, 229, 229, 1);
		border: none;
	}	

	.paging-div>button:hover {
		font-weight: bold;
		background: rgba(220, 220, 220, 1);
	}

	.paging-div>button:active {
		background: rgba(39, 50, 56, 1);
		color: white;
	}	
</style>
</head>
<body>
	<header>
		<img src="#logo"/>
		<h3 id="header-h2">회원 정보 조회</h3>
	</header>
	<%@ include file="header.jsp" %>
	<section id="member-section">
		<div class="member-li-div">
			<div class="content">
				<div class="title">회원 정보</div>
				<table class="mem-list-table">
					<tr class="tr-header">
						<th><input type="checkbox" id="del-mem-all"></th>
						<th>회원 ID</th>
						<th>이름</th>
						<th>성별</th>
						<th>이메일</th>
						<th>전화번호</th>
						<th>회원 등급</th>
						<th>상태</th>
					</tr>
					<tr>
						<td colspan="8">회원이 없습니다.</td>
					</tr>
				</table>
			</div>
		</div>
		<!-- 페이징 버튼 -->
		<div class="paging-div">
			<button>&lt;</button>
			<button>1</button>
			<button>2</button>
			<button>3</button>
			<button>4</button>
			<button>5</button>
			<button>&gt;</button>
		</div>
		<div class="member-li-div">
			<div class="content">
				<div class="title">탈퇴한 회원 관리 </div>
				<table class="mem-list-table">
					<tr class="tr-header">
						<th><input type="checkbox" id="del-all"></th>
						<th>회원 ID</th>
						<th>이름</th>
						<th>회원 등급</th>
						<th>이메일</th>
						<th>탈퇴일</th>
					</tr>
					<tr>
						<td colspan="7">탈퇴한 회원이 없습니다.</td>
					</tr>
				</table>
			</div>
			<script>
				var memlist = $('.delete-mem');
				var ownlist = $('.delete-del');
					
					
				$('#del-mem-all').click(function(){
					var isChecked = $(this).is(':checked');
					if(isChecked){
						memlist.prop('checked',true);
					}else{
						memlist.prop('checked',false);
					}
				});
						
				$(".delete-mem").click(function(){
					var count = 0;
					for(var i = 0; i < memlist.length; i++){
						if(memlist[i].checked){
							count++;
						}
					}
					if(count != memlist.length){
						$('#del-mem-all').prop('checked',false);
					}else{
						$('#del-mem-all').prop('checked',true);
					}
							
				});
						
	
				$('#del-all').click(function() {
					var isChecked = $(this).is(':checked');
					if (isChecked) {
						ownlist.prop('checked', true);
					} else {
						ownlist.prop('checked', false);
					}
				});

				$(".delete-del").click(function() {
					var count = 0;
					for (var i = 0; i < ownlist.length; i++) {
						if (ownlist[i].checked) {
							count++;
						}
					}
					if (count != ownlist.length) {
						$('#del-all').prop('checked', false);
					} else {
						$('#del-all').prop('checked', true);
					}
				});
			</script>
		</div>
		<!-- 페이징 버튼 -->
		<div class="paging-div">
			<button>&lt;</button>
			<button>1</button>
			<button>2</button>
			<button>3</button>
			<button>4</button>
			<button>5</button>
			<button>&gt;</button>
		</div>
	</section>
</body>
</html>