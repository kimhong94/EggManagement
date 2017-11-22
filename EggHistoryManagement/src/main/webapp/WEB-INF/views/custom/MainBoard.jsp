<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- jQuery 2.1.4 -->
<link rel="stylesheet" href="style.css" />

<link href="/resources/Shop.css" rel="stylesheet" type="text/css">
<script src="resources/plugins/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<link href="/resources/bootstrap-3.3.2/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="/resources/bootstrap-3.3.2/js/bootstrap.min.js" rel="stylesheet" type="" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="http://fonts.googleapis.com/css?family=Love+Ya+Like+A+Sister" rel="stylesheet" type="text/css">

<style>
.qr_banner {
	width: 80%;
	height: 300px;
	margin: 5% 10% 0% 10%;
}

.qr_banner_info {
	width: 40%;
	height: 50px;
	margin: 3% 20% 10% 30%;
	text-align: center;
	font-size: 25px;
}

* {
	margin: 0;
	padding: 0;
}

body {
	font: 16px/30px Verdana, Geneva, sans-serif;
}

ul {
	margin: 0;
	padding: 0;
}

li {
	list-style: none;
}

a {
	text-decoration: none;
	color: #000;
}

.wrapper {
	width: 1170px;
	margin: 10px auto;
	border: 1px solid #dedede;
}

nav {
	background: #f5f5f5;
	height: 55px
}

nav .logo {
	width: 300px;
	float: left;
	line-height: 55px;
}

.menu {
	float: right;
}

.menu li {
	width: 170px;
	text-align: center;
	float: left;
	line-height: 55px;
}

ul.dropdown li a {
	display: none;
	transition: all 0.5s ease-in-out;
	-webkit-transition: all 0.5s ease-in-out;
	-moz-transition: all 0.5s ease-in-out;
	-ms-transition: all 0.5s ease-in-out;
	-o-transition: all 0.5s ease-in-out;
	transform: scale(1.1, 1.1);
	-webkit-transform: scale(1.1, 1.1)
}

.submenu a {
	position: relative;
}

.arrow:after {
	content: '';
	position: absolute;
	display: block;
	width: 0;
	height: 0;
	border-left: 7px solid transparent;
	border-right: 7px solid transparent;
	border-top: 7px solid #000;
	top: 25px;
	right: 35px;
}

.submenu:hover .dropdown li a {
	display: block;
	transition: all 0.5s ease-in-out;
	-webkit-transition: all 0.5s ease-in-out;
	-moz-transition: all 0.5s ease-in-out;
	-ms-transition: all 0.5s ease-in-out;
	-o-transition: all 0.5s ease-in-out;
	)
}

.dropdown li {
	line-height: 40px;
}

.menu li a {
	display: block;
}

.logo h1 {
	margin: 5px 50px;
	color: #de5823;
	font-size: 30px;
}

.logo a:hover {
	text-decoration: none;
}

.logo a:hover h1 {
	color: black;
}

.menu li a {
	background: #D1D1D1;
	transition: all 0.5s ease-in-out;
	-webkit-transition: all 0.5s ease-in-out;
	-moz-transition: all 0.5s ease-in-out;
	-ms-transition: all 0.5s ease-in-out;
	-o-transition: all 0.5s ease-in-out;
}

.menu li a:hover {
	background: #9c9c9c;
	color: #fff;
	border-bottom: 3px solid #000;
}

li.active a {
	background: #9c9c9c;
	color: #fff;
	border-bottom: 3px solid #000;
}

.slider {
	width: 1170px;
	height: 450px;
	display: block;
	animation: slide 15s ease-in-out infinite;
}

.slider img {
	display: inline-block;
}

@
keyframes slide { 0%{
	background: url(http://i.imgur.com/u6NNIP6.jpg) no-repeat;
	background-size: cover;
}

50%{
background




:url




(
http




:
//i




.imgur




.com
/6Df0zT4




.jpg




)
no-repeat




;
background-size




:cover




;
}
100%{
background




:url




(
http




:
//i




.imgur




.com
/xNbkboD




.jpg




)
no-repeat




;
background-size




:cover




;
}
}
@
-webkit-keyframes slide { 0%{
	background: url(http://i.imgur.com/u6NNIP6.jpg) no-repeat;
	background-size: cover;
}

50%{
background




:url




(
http




:
//i




.imgur




.com
/6Df0zT4




.jpg




)
no-repeat




;
background-size




:cover




;
}
100%{
background




:url




(
http




:
//i




.imgur




.com
/xNbkboD




.jpg




)
no-repeat




;
background-size




:cover




;
}
}
.about {
	padding: 20px 0px;
	overflow: auto;
}

.about h1 {
	text-align: center;
	font-size: 32px;
	color: #f00;
	text-transform: uppercase;
	position: relative;
	margin-bottom: 1em;
}

.about h1:after {
	content: '';
	position: absolute;
	display: block;
	border-bottom: 2px solid #000;
	width: 200px;
	left: 0;
	right: 0;
	margin: 5px auto;
}

.about_para {
	width: 700px;
	height: 100%;
	display: block;
	float: left;
	padding: 10px;
}

.about_para a {
	border: 1px solid #b31640;
	padding: 5px 15px;
	background: #ef3567;
	display: inline-block;
	margin: 20px 0px;
	color: #fff;
	transition: all 0.5s ease-in-out;
	-webkit-transition: all 0.5s ease-in-out;
	-moz-transition: all 0.5s ease-in-out;
	-ms-transition: all 0.5s ease-in-out;
	-o-transition: all 0.5s ease-in-out;
	box-shadow: 0px 3px 5px #dedede;
}

.about_para a:hover {
	background: #b31641;
	color: #fff;
	box-shadow: 5px 9px 5px #dedede;
}

.about_para #info_para {
	font-size: 17px;
}

.about_img {
	width: 350px;
	height: 100%;
	display: inline-block;
}

.about_img img {
	width: 428px;
	height: 250px;
}
</style>
</head>


<body>
	<div class="wrapper">
		<nav>
		<div class="logo">
			<a href="/"><h1>계란 이력관리</h1></a>
		</div>
		<div class="menu">
			<ul>
				<li class="submenu"><a href="Main">주문하기</a>
				<li class="submenu"><a href="EggInfo">계란 정보</a>
				<li class="submenu"><a href="CustomMain">이력관리 정보</a>
				<li class="active"><a href="MainBoard">고객지원</a>
			</ul>
		</div>
		</nav>
		<div id="rightMenu" style="position: fixed; top: 150px; left: 94%;">
			<p>로그인</p>
			<a href="/login"><img src="https://www.farm2table.kr/img/right_menu01.png" alt="소비자 홈페이지 바로가기"></a>
			<div class="space06"></div>
			<br> <a href="/login"><img src="https://www.farm2table.kr/img/right_menu02.png" alt="유통/생산자 홈페이지 바로가기"></a>
		</div>
		<h3 style="text-align: center;">1. Q&A</h3>
		<hr>
		<div class="qr_banner">
			<div id="rightConWrap">
				<form name="listFrm" id="listFrm" mothod="post">
					<input name="pageIndex" type="hidden" value="1">
					<input name="bbsseq" type="hidden" value="">
					<input type="hidden" name="menuNo" value="43">

					<div class="subTitle">
						<h2>Q & A</h2>
						<div class="location"></div>
					</div>


					<label>검색</label>
					<select name="searchField" title="검색조건 선택">
						<option value="all">전체</option>
						<option value="title">제목</option>
						<option value="names">등록자</option>
					</select>
					<input name="searchKeyword" title="검색어 입력" type="text" maxlength="20" value="" class="i_text textwidth200" onkeypress="press(event);">
					<input type="submit" class="btn_white_small2" value="검색" onclick="fn_egov_select_noticeList('1'); return false;">
					<p class="conText">
						<span class="currentNum">총 0 건</span>의 게시물이 검색되었습니다.
					</p>
					<div class="space30"></div>


					<table class="table-c table-hover tableLink" border="0" cellspacing="0" cellpadding="0" summary="묻고답하기">
						<caption>묻고답하기</caption>
						<colgroup>
							<col width="8%">
							<col width="*">
							<col width="10%">
							<col width="10%">
							<col width="15%">
							<col width="8%">
						</colgroup>
						<tbody>
							<tr style="background-color: #7bb937;">
								<th width="47" class="hline rightline">번호</th>
								<th width="48" class="hline rightline">제목</th>
								<th width="95" class="hline rightline">공개여부</th>
								<th width="193" class="hline rightline">등록자</th>
								<th width="194" class="hline rightline">등록일</th>
								<th width="71" class="hline">조회</th>
							</tr>

							<!-- 등록된 게시물이 없을 경우 -->

							<tr>
								<td colspan="6" class="nodata">데이터가 없습니다</td>
							</tr>

							<!-- 등록된 게시물이 없을 경우 // -->


						</tbody>
					</table>
				</form>


				<div class="pageNum">
					<ul class="pagination pagination-sm">
						<li class="active"><span>1</span></li>

					</ul>
				</div>
				<!-- 관리자일 경우 글쓰기 버튼 노출 -->
				<div class="bbsBtn" style="margin-top: -20px">
					<div class="bbsListBtn">
						<!-- auth == '50' 일 경우 글쓰기 버튼 노출 -->
						<input type="button" class="btn btn-success" value="글쓰기" onclick="goWrite()">
					</div>
				</div>
				<!-- 관리자일 경우 글쓰기 버튼 노출 // -->
			</div>
		</div>
		<h3 style="text-align: center;"></h3>
	</div>
</body>
</html>
