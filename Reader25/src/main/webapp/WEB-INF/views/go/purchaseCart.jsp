<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP&Servlet</title>
<script type="text/javascript" src="<%= request.getContextPath() %>/js/jquery-3.5.1.min.js"></script>
<style>
	<%-- body{
		background:url('<%= request.getContextPath() %>/images/bg.png') no-repeat center center fixed;
		background-size: cover;
	}  --%>
	img{
		align="center"
	}
	.loginArea{float: right;}
	#loginTable{text-align: right;}
	#loginTable td:nth-child(1){padding-right: 15px;}
	.loginBtns{float: right; margin-left: 5px;}
	#loginBtn, #myPageBtn{background: #D1B2FF;}
	#joinBtn, #logoutBtn{background: #B2CCFF;}
	input[type=button], input[type=submit]{cursor: pointer; border-radius: 15px; color: white;}
	#userInfo label{font-weight: bold;}

	.wrap{background: #F5715C; width: 100%; height: 50px;}
	.menu{
		background: #F5715C; color: white; text-align: center; font-weight: bold; 
		vertical-align: middle; width: 150px; height: 50px; display: table-cell;
	}
	nav{width: 600px; margin-left: auto; margin-right: auto;}
	.menu:hover {background: beige; color:orangered; font-weight:bold; cursor:pointer;}
 
 /*        결제                  */
 
 	.outer{
		min-width: 500px; min-height: 500px; font-size: 14px;
		margin-left: auto; margin-right: auto; margin-top: 5%; margin-bottom: 50px;
	}
	
	table {text-align:center; }
	td{height:40px;}
	
	input[type="text"]{
		height:20px; 
		border : 0px;
		text-align:center;
	}
	hr{width:50%; color:#bcbcbc;}
	
	.btn{
		font-size: 14px; color:#fff; border: 1px solid  #F5715C;
		background-color:  #F5715C; width:80px; height:30px;
	}
	
	.Btn{
		font-size: 14px; color:#fff; border: 1px solid  #F5715C;
		background-color:  #F5715C; width:150px; height:30px;
	}
 
 /*    footer    */
footer{
	width: 100%;
	height: 270px;
	background-color: #F5715C; color: white;
	padding-top: 30px;
}
#bottom_logo{
	display: inline-block;
	width: 346px;
	height: 77px;
}

#notice{
	display: inline-block;
	width: 800px;
	color: white;
	padding:3px 2px 0 10px;
	/*출력할 문자의 위치 ( 위쪽에서 3px , 오른쪽 2px , 아래쪽 0 , 왼쪽 30px만큼 공간을 띄고 출력)  */
	font-family: NanumGothic;
	font-size: 15px;
	font-weight:bold;
	line-height: 18px;
	letter-spacing: 3px;
}



</style>
</head>
<body>
	<!-- <h1 align="center">Reader25</h1> -->
<%@include file="../common/menubar.jsp" %>
	<br><br><br><br><br><br><br><br>
	  
	  
	<div class="outer">
		<form action="<%= request.getContextPath() %>/importBuy" method="post" id="buyForm" name="buyForm">
			<div id="listArea" align="center">
				<h2 align="center">주문하신 상품</h2>			 
				<table class="table1">
					<tr>
						<td></td>
						<td>상품 코드</td>
						<td>상품 이름</td>
						<td>상품 가격</td>
						<td>개수</td>
					</tr>
					
					<tr>
						<td><input type="hidden" name="chk" ></td>
						<td><input type="text" name="p_id"></td>
						<td><input type="text" name="p_name"></td>
						<td><input type="text" name="cart_price" ></td>
						<td><input type="text" name="amount"></td>
					</tr>
					
				</table>		
				<br><br><br><br>
				총 금액 : <input type="text" name="total" >	
				<br><br><br><br>
				
			</div>
			<hr>
			<div id="loginUserTable" align="center">
				<h2>배송지</h2>
				<p>(저장되어있는 배송지를 가져옵니다. 수정하실 부분을 적어주세요.)</p>
				<br>
				<table id="table2">
					<tr>
						<td width="200px">수령인</td>
						<td width="200px"><input type="text" name="orderName"></td>
					</tr>				
					<tr>
						<td>아이디</td>
						<td><input type="text" name="memberId" style="background:lightgray;"></td>
					</tr>
					<tr>
						<td>휴대폰 번호</td>
					<td><input type="text" maxlength="11" name="orderPhone" placeholder="(-없이)01012345678" ></td>
					</tr>
					<tr>
						<td>이메일</td>
						<td><input type="text" name="email"></td>
					</tr>
					<tr>
						<td>우편번호</td>
						<td><input type="text" id="userPostal" name="joinPostal"  ></td>
						<td><div><input type="button" class="btn" id="findPostal" onclick="ifindPostal();" value="검색"></div></td>
					</tr>
					<tr>
						<td>* 주소</td>
						<td><input type="text" id="joinAddress1" name="joinAddress1"></td>
						<td><span id="guide" style="color:#999;display:none"></span></td>
					</tr>
					<tr>
						<td>* 상세주소</td>
						<td height="60px"><input type="text" id="joinAddress2" name="joinAddress2" ></td>
					</tr>
					<tr>
						<td>배송메모</td>
						<td><input type="text" id="orderRequire" name ="orderRequire" placeholder="요청사항을 입력해주세요."></td>
					</tr>
				</table>
				<br>
			</div>
			<hr>
			<br><br><br><br>
			<div align="center">
				<input type="submit" onclick="buy(); " value="주문하기" class="Btn">
				<input type="button" onclick="location.href='javascript:history.back();'" value="장바구니 수정하기" class="Btn">
			</div>
			<br><br><br><br>	
		</form>	
	</div><!-- outer마지맘ㄱ -->
	  
	  
	  
	<br><br><br><br><br><br><br><br>
	<footer>
	<div class="footer">
			<div class="frame botton_area">
				<div id="bottom_logo">
				<img src="${ pageContext.servletContext.contextPath }
				/images/Logo2.png"style="float: left;  margin: 0 auto;"  
				width="210" height="45" ></div>
				<br>
				<div id="notice">
					레시피팩토리에 게시된 모든 컨텐츠들은 저작권법에 의거 보호받고 있습니다. <br> 저작권자 또는
					(주)레시피팩토리의 승인없이 컨텐츠의 일부 또는 전부를 복제,전송,배포 및 기타의 방법으로 저작물을 이용할 경우에는<br>
					저작권법에 의해 법적 조치에 처해질 수 있으므로 주의하시길 바랍니다. <br> <br> 사업자등록번호:
					111-22-33333 통신판매업신고번호 : 제1111-서울역삼-2222호 대표 : 금민석 <br> 주소 :
					서울시 역삼동 어쩌주 저쩌구 고객센터: 1234-1004 <br> <br> <b>ⓒ 2020
						Recipe Factory Corp. Ltd. All rights reserved</b>
				</div>
			</div>
		</div>
	</footer>
	<script>
		function logout(){
			location.href='<%= request.getContextPath() %>/logout.me';
		}
		
		function memberJoin(){
			location.href="<%= request.getContextPath() %>/signUpForm.me";
		}
		
		function goHome(){
			location.href='<%= request.getContextPath() %>';
		}
		
		function goNotice(){
			location.href='<%= request.getContextPath() %>/list.no';
		}
		
		function goBoard(){
			location.href='<%= request.getContextPath() %>/list.bo';
		}
		
		function goThumbnail0(){
			location.href='<%= request.getContextPath() %>/list.th';
		}
		function goThumbnail1(){
			location.href='<%= request.getContextPath() %>/list.th';
		}
		function noticeboard(){
			location.href="<%= request.getContextPath() %>/NoticeListServlet.no";
		}
		
		function qna(){
		      location.href="<%=request.getContextPath() %>/QboardListServlet.qb";
		}
		function fqna(){
			location.href="<%= request.getContextPath()%>/FAQListServlet.fa";
		}
	</script>
</body>
</html>