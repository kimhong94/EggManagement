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

<link href="/resources/bootstrap/css/Shop.css" rel="stylesheet" type="text/css">
<script src="resources/plugins/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="/resources/bootstrap/js/bootstrap.min.js" rel="stylesheet" type="" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="http://fonts.googleapis.com/css?family=Love+Ya+Like+A+Sister" rel="stylesheet" type="text/css">

<style>
.qr_banner {
	width: 40%;
	height: 300px;
	margin: 10% 20% 0% 30%;
	background: black;
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
				<li class="active"><a href="EggInfo">계란 정보</a>
				<li class="submenu"><a href="CustomMain">이력관리 정보</a>
				<li class="submenu"><a href="MainBoard">고객지원</a>
			</ul>
		</div>
		</nav>
		<div id="rightMenu" style="position: fixed; top: 150px; left: 60%;">
			<p>로그인</p>
			<a href="/login"><img src="https://www.farm2table.kr/img/right_menu01.png" alt="소비자 홈페이지 바로가기"></a>
			<div class="space06"></div>
			<br> <a href="/login"><img src="https://www.farm2table.kr/img/right_menu02.png" alt="유통/생산자 홈페이지 바로가기"></a>
		</div>

		<h3 style="text-align: center;">1. 품종</h3>
		<hr>
		<table class="table je-table  table-bordered table-responsive mg-top-50">
			<tbody>
				<tr>
					<td></td>
					<th>유정란</th>
					<th>무정란</th>
				</tr>
				<tr>
					<td>산란 방법</td>
					<td>교배</td>
					<td>배란</td>
				</tr>

				<tr>
					<td>부화 여부</td>
					<td><span class="glyphicon glyphicon-ok" aria-hidden="true"></span></td>
					<td><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></td>
				</tr>

				<tr>
					<td>영양분</td>
					<td>높음</td>
					<td>낮음</td>
				</tr>
				<tr>
					<td>구분 방법</td>
					<td>소금물에 가라앉음</td>
					<td>소금물에 떠오름</td>
				</tr>

			</tbody>
		</table>
		<hr>
		<h3 style="text-align: center;">2. 중량</h3>
		<hr>
		<table class="table je-table  table-bordered table-responsive mg-top-50">
			<tbody>
				<tr>
					<td></td>
					<th>왕란</th>
					<th>특란</th>
					<th>대란</th>
					<th>중란</th>
					<th>소란</th>
					<th>경란</th>
				</tr>
				<tr>
					<td>개정(g)</td>
					<td>68 이상</td>
					<td>60 ~ 68</td>
					<td>52 ~ 60</td>
					<td>44 ~ 52</td>
					<td>44 이하</td>
					<td>폐지</td>
				</tr>

				<tr>
					<td>종전관행(g)</td>
					<td>70 이상</td>
					<td>60 ~ 70</td>
					<td>54 ~ 60</td>
					<td>47 ~ 54</td>
					<td>42 ~ 47</td>
					<td>42 이하</td>
				</tr>
			</tbody>
		</table>
		<hr>
		<h3 style="text-align: center;">3. 연도별 등급 표</h3>
		<hr>
		<div class="col-md-12" style="overflow-x: auto;">

			<ul class="priceNum8">
				<li class="contrast">
					<ul class="planContainer">
						<li class="title"><h2>&nbsp;</h2></li>
						<li>
							<ul class="options">
								<li>1+등급</li>
								<li>1등급</li>
								<li>2등급</li>
								<li style="border: 0 none;">3등급</li>
							</ul>
						</li>
					</ul>
				</li>
				<li class="contrast">
					<ul class="planContainer">
						<li class="title"><h2>2017</h2></li>
						<li>
							<ul class="options">
								<li>93.4%</li>
								<li>6.4%</li>
								<li>0.2%</li>
								<li style="border: 0 none; padding-bottom: 2.5em;">0.0%</li>
							</ul>
						</li>
					</ul>
				</li>
				<li class="contrast">
					<ul class="planContainer">
						<li class="title"><h2 style="color: white;">2016</h2></li>
						<li>
							<ul class="options">
								<li>94.6%</li>
								<li>5.0%</li>
								<li>0.4%</li>
								<li style="border: 0 none; padding-bottom: 1.5em;">0.0%</li>
							</ul>
						</li>
					</ul>
				</li>
				<li class="contrast">
					<ul class="planContainer">
						<li class="title"><h2 style="color: white;">2015</h2></li>
						<li>
							<ul class="options">
								<li>94.6%</li>
								<li>5.3%</li>
								<li>0.1%</li>
								<li style="border: 0 none; padding-bottom: 1.5em;">0.0%</li>
							</ul>
						</li>
					</ul>
				</li>
				<li class="contrast">
					<ul class="planContainer">
						<li class="title"><h2 style="color: white;">2014</h2></li>
						<li>
							<ul class="options">
								<li>93.5%</li>
								<li>6.5%</li>
								<li>0.0%</li>
								<li style="border: 0 none; padding-bottom: 1.5em;">0.0%</li>
							</ul>
						</li>
					</ul>
				</li>
			</ul>
		</div>
		<!-- End ul#plans -->
		<table class="table je-table  table-bordered table-responsive mg-top-50">
			<tbody>
				<tr>
			</tbody>
		</table>

	</div>
</body>
</html>