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

<link href="/egg/resources/Shop.css" rel="stylesheet" type="text/css">
<script src="resources/plugins/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<link href="/egg/resources/bootstrap-3.3.2/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="/egg/resources/bootstrap-3.3.2/js/bootstrap.min.js" rel="stylesheet" type="" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="http://fonts.googleapis.com/css?family=Love+Ya+Like+A+Sister" rel="stylesheet" type="text/css">
<script src='//production-assets.codepen.io/assets/editor/live/console_runner-079c09a0e3b9ff743e39ee2d5637b9216b3545af0de366d4b9aad9dc87e26bfd.js'></script>
<script src='//production-assets.codepen.io/assets/editor/live/events_runner-73716630c22bbc8cff4bd0f07b135f00a0bdc5d14629260c3ec49e5606f98fdd.js'></script>
<script src='//production-assets.codepen.io/assets/editor/live/css_live_reload_init-2c0dc5167d60a5af3ee189d570b1835129687ea2a61bee3513dee3a50c115a77.js'></script>
<meta charset='UTF-8'>
<meta name="robots" content="noindex">
<link rel="shortcut icon" type="image/x-icon" href="//production-assets.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" />
<link rel="mask-icon" type="" href="//production-assets.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111" />
<link rel="canonical" href="https://codepen.io/suez/pen/OjGQza?depth=everything&limit=all&order=popularity&page=59&q=icon&show_forks=false" />

<style class="cp-pen-styles">
*, *:before, *:after {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

body {
	font-family: 'Roboto', Helvetica, Arial, sans-serif;
	background: #f5f5f5;
}

.slider {
	overflow: hidden;
	position: relative;
	height: 100vh;
	color: #fff;
}

.slider__top-heading {
	z-index: 12;
	position: absolute;
	left: 0;
	top: 100px;
	width: 100%;
	text-align: center;
	font-size: 16px;
	text-transform: uppercase;
	letter-spacing: 2.5px;
	-webkit-transition: all 0.5s 1s;
	transition: all 0.5s 1s;
	-webkit-transform: translateY(-30px);
	transform: translateY(-30px);
	opacity: 0;
}

.slider.s--ready .slider__top-heading {
	-webkit-transform: translateY(0);
	transform: translateY(0);
	opacity: 1;
}

.slider__slides {
	position: relative;
	height: 100%;
}

.slider__slide {
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	pointer-events: none;
}

.slider__slide.s--active {
	pointer-events: auto;
}

.slider__slide-content {
	z-index: 6;
	position: relative;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-ms-flex-direction: column;
	flex-direction: column;
	height: 100%;
	text-transform: uppercase;
	line-height: 1;
}

.slider__slide-subheading {
	margin-bottom: 20px;
	font-size: 24px;
	letter-spacing: 2px;
	-webkit-transform: translateY(20px);
	transform: translateY(20px);
	opacity: 0;
	-webkit-transition: 0.5s;
	transition: 0.5s;
}

.slider__slide.s--active .slider__slide-subheading {
	-webkit-transition-delay: 0.65s;
	transition-delay: 0.65s;
	opacity: 1;
	-webkit-transform: translateY(0);
	transform: translateY(0);
}

.slider__slide-heading {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	margin-bottom: 20px;
	font-size: 60px;
	letter-spacing: 12px;
}

.slider__slide-heading span {
	display: block;
	opacity: 0;
	-webkit-transform: translateY(-60px);
	transform: translateY(-60px);
	-webkit-transition: all 0.33333s;
	transition: all 0.33333s;
}

.slider__slide.s--prev .slider__slide-heading span {
	-webkit-transform: translateY(60px);
	transform: translateY(60px);
}

.slider__slide.s--active .slider__slide-heading span {
	opacity: 1;
	-webkit-transform: translateY(0);
	transform: translateY(0);
}

.slider__slide-heading span:nth-child(1) {
	-webkit-transition-delay: 0s;
	transition-delay: 0s;
}

.slider__slide.s--active .slider__slide-heading span:nth-child(1) {
	-webkit-transition-delay: 0.33333s;
	transition-delay: 0.33333s;
}

.slider__slide-heading span:nth-child(2) {
	-webkit-transition-delay: 0.1s;
	transition-delay: 0.1s;
}

.slider__slide.s--active .slider__slide-heading span:nth-child(2) {
	-webkit-transition-delay: 0.43333s;
	transition-delay: 0.43333s;
}

.slider__slide-heading span:nth-child(3) {
	-webkit-transition-delay: 0.2s;
	transition-delay: 0.2s;
}

.slider__slide.s--active .slider__slide-heading span:nth-child(3) {
	-webkit-transition-delay: 0.53333s;
	transition-delay: 0.53333s;
}

.slider__slide-heading span:nth-child(4) {
	-webkit-transition-delay: 0.3s;
	transition-delay: 0.3s;
}

.slider__slide.s--active .slider__slide-heading span:nth-child(4) {
	-webkit-transition-delay: 0.63333s;
	transition-delay: 0.63333s;
}

.slider__slide-heading span:nth-child(5) {
	-webkit-transition-delay: 0.4s;
	transition-delay: 0.4s;
}

.slider__slide.s--active .slider__slide-heading span:nth-child(5) {
	-webkit-transition-delay: 0.73333s;
	transition-delay: 0.73333s;
}

.slider__slide-heading span:nth-child(6) {
	-webkit-transition-delay: 0.5s;
	transition-delay: 0.5s;
}

.slider__slide.s--active .slider__slide-heading span:nth-child(6) {
	-webkit-transition-delay: 0.83333s;
	transition-delay: 0.83333s;
}

.slider__slide-heading span:nth-child(n+7) {
	-webkit-transition-delay: 0.6s;
	transition-delay: 0.6s;
}

.slider__slide.s--active .slider__slide-heading span:nth-child(n+7) {
	-webkit-transition-delay: 0.93333s;
	transition-delay: 0.93333s;
}

.slider__slide-readmore {
	position: relative;
	font-size: 14px;
	text-transform: lowercase;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
	-webkit-transform: translateY(-20px);
	transform: translateY(-20px);
	cursor: pointer;
	opacity: 0;
	-webkit-transition: 0.5s;
	transition: 0.5s;
}

.slider__slide.s--active .slider__slide-readmore {
	-webkit-transition-delay: 0.65s;
	transition-delay: 0.65s;
	opacity: 1;
	-webkit-transform: translateY(0);
	transform: translateY(0);
}

.slider__slide-readmore:before {
	content: '';
	position: absolute;
	left: -2px;
	top: -3px;
	width: calc(100% + 4px);
	height: calc(100% + 6px);
	background: rgba(255, 255, 255, 0.4);
	-webkit-transform: scaleX(0.3);
	transform: scaleX(0.3);
	-webkit-transform-origin: 0 50%;
	transform-origin: 0 50%;
	-webkit-transition: -webkit-transform 0.3s;
	transition: -webkit-transform 0.3s;
	transition: transform 0.3s;
	transition: transform 0.3s, -webkit-transform 0.3s;
}

.slider__slide-readmore:hover:before {
	-webkit-transform: scaleX(1);
	transform: scaleX(1);
}

.slider__slide-parts {
	position: absolute;
	left: 0;
	top: 0;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	width: 100%;
	height: 100%;
}

.slider__slide-parts:after {
	content: '';
	z-index: 5;
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.1);
}

.slider__slide-part {
	position: relative;
	width: 25%;
	height: 100%;
}

.slider__slide-part-inner {
	overflow: hidden;
	position: relative;
	width: 100%;
	height: 100%;
	background-size: 0 0;
	background-repeat: no-repeat;
	-webkit-transition: -webkit-transform 0.5s ease-in-out;
	transition: -webkit-transform 0.5s ease-in-out;
	transition: transform 0.5s ease-in-out;
	transition: transform 0.5s ease-in-out, -webkit-transform 0.5s
		ease-in-out;
}

.slider__slide-part-inner:before {
	content: '';
	position: absolute;
	width: 100vw;
	height: 100%;
	background-image: inherit;
	background-size: cover;
	background-position: center center;
	-webkit-transition: opacity 0.25s;
	transition: opacity 0.25s;
	opacity: 0;
}

.slider__slide-part:nth-child(1) .slider__slide-part-inner {
	z-index: 3;
	-webkit-transition-delay: 0.24s;
	transition-delay: 0.24s;
	-webkit-transform: translateX(-32.5%);
	transform: translateX(-32.5%);
}

.slider__slide.s--active .slider__slide-part:nth-child(1) .slider__slide-part-inner
	{
	-webkit-transition-delay: 0.28s;
	transition-delay: 0.28s;
}

.slider__slide-part:nth-child(1) .slider__slide-part-inner:before {
	left: 0vw;
	-webkit-transition-delay: 0.365s;
	transition-delay: 0.365s;
}

.slider__slide.s--active .slider__slide-part:nth-child(1) .slider__slide-part-inner:before
	{
	-webkit-transition-delay: 0.28s;
	transition-delay: 0.28s;
}

.slider__slide-part:nth-child(2) .slider__slide-part-inner {
	z-index: 2;
	-webkit-transition-delay: 0.16s;
	transition-delay: 0.16s;
	-webkit-transform: translateX(-65%);
	transform: translateX(-65%);
}

.slider__slide.s--active .slider__slide-part:nth-child(2) .slider__slide-part-inner
	{
	-webkit-transition-delay: 0.36s;
	transition-delay: 0.36s;
}

.slider__slide-part:nth-child(2) .slider__slide-part-inner:before {
	left: -25vw;
	-webkit-transition-delay: 0.285s;
	transition-delay: 0.285s;
}

.slider__slide.s--active .slider__slide-part:nth-child(2) .slider__slide-part-inner:before
	{
	-webkit-transition-delay: 0.36s;
	transition-delay: 0.36s;
}

.slider__slide-part:nth-child(3) .slider__slide-part-inner {
	z-index: 1;
	-webkit-transition-delay: 0.08s;
	transition-delay: 0.08s;
	-webkit-transform: translateX(-97.5%);
	transform: translateX(-97.5%);
}

.slider__slide.s--active .slider__slide-part:nth-child(3) .slider__slide-part-inner
	{
	-webkit-transition-delay: 0.44s;
	transition-delay: 0.44s;
}

.slider__slide-part:nth-child(3) .slider__slide-part-inner:before {
	left: -50vw;
	-webkit-transition-delay: 0.205s;
	transition-delay: 0.205s;
}

.slider__slide.s--active .slider__slide-part:nth-child(3) .slider__slide-part-inner:before
	{
	-webkit-transition-delay: 0.44s;
	transition-delay: 0.44s;
}

.slider__slide-part:nth-child(4) .slider__slide-part-inner {
	z-index: 0;
	-webkit-transition-delay: 0s;
	transition-delay: 0s;
	-webkit-transform: translateX(-130%);
	transform: translateX(-130%);
}

.slider__slide.s--active .slider__slide-part:nth-child(4) .slider__slide-part-inner
	{
	-webkit-transition-delay: 0.52s;
	transition-delay: 0.52s;
}

.slider__slide-part:nth-child(4) .slider__slide-part-inner:before {
	left: -75vw;
	-webkit-transition-delay: 0.125s;
	transition-delay: 0.125s;
}

.slider__slide.s--active .slider__slide-part:nth-child(4) .slider__slide-part-inner:before
	{
	-webkit-transition-delay: 0.52s;
	transition-delay: 0.52s;
}

.slider__slide.s--active .slider__slide-part-inner {
	-webkit-transform: translateX(0);
	transform: translateX(0);
	-webkit-transition-timing-function: ease;
	transition-timing-function: ease;
}

.slider__slide.s--active .slider__slide-part-inner:before {
	opacity: 1;
}

.slider__control {
	z-index: 100;
	position: absolute;
	left: 50px;
	top: 50%;
	width: 50px;
	height: 50px;
	margin-top: -25px;
	border-radius: 50%;
	background: rgba(255, 255, 255, 0.4);
	-webkit-transform: translateX(-50px);
	transform: translateX(-50px);
	opacity: 0;
	-webkit-transition: all 0.5s 1s;
	transition: all 0.5s 1s;
	cursor: pointer;
}

.slider__control:before {
	content: '';
	position: absolute;
	left: 50%;
	top: 50%;
	width: 20px;
	height: 20px;
	margin-left: -10px;
	margin-top: -10px;
	border: 2px solid #000;
	border-bottom: none;
	border-right: none;
	-webkit-transform: translateX(5px) rotate(-45deg);
	transform: translateX(5px) rotate(-45deg);
}

.slider__control--right {
	left: auto;
	right: 50px;
	-webkit-transform: translateX(50px);
	transform: translateX(50px);
}

.slider__control--right:before {
	-webkit-transform: translateX(-5px) rotate(135deg);
	transform: translateX(-5px) rotate(135deg);
}

.slider.s--ready .slider__control {
	-webkit-transform: translateX(0);
	transform: translateX(0);
	opacity: 1;
}

.icon-link {
	z-index: 100;
	position: absolute;
	left: 5px;
	bottom: 5px;
	width: 32px;
}

.icon-link img {
	width: 100%;
	vertical-align: top;
}

.icon-link--twitter {
	left: auto;
	right: 5px;
}
</style>
<style>
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

.submenu a:hover {
	text-decoration: none;
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




:


 


url




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




:


 


cover




;
}
100%{
background




:


 


url




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




:


 


cover




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
				<li class="active"><a href="Main">주문하기</a>
				<li class="submenu"><a href="EggInfo">계란 정보</a>
				<li class="submenu"><a href="CustomMain">이력관리 정보</a>
				<li class="submenu"><a href="MainBoard">고객지원</a>
			</ul>
		</div>
		</nav>

		<div id="app"></div>
		<div id="rightMenu" style="position: fixed; top: 150px; left: 94%;">
			<p>로그인</p>
			<a href="/login"><img src="https://www.farm2table.kr/img/right_menu01.png" alt="소비자 홈페이지 바로가기"></a>
			<div class="space06"></div>
			<br> <a href="/login"><img src="https://www.farm2table.kr/img/right_menu02.png" alt="유통/생산자 홈페이지 바로가기"></a>
		</div>
		<section class="about">
		<h1>QR Code</h1>
		<div class="about_para">
			<p id="info_para">&nbsp요즘은 QR코드로 계란에 대한 정보만 확인하는 시대가 아닙니다. 고객 여러분 계란이 어떠한 곳에서 생산 되었으며 어떤 과정으로 유통이 되었는 지 추가적으로 확인 하고 싶으시면 지금 바로 계란에 부착된 QR코드를 아래 버튼을 누르시고 인식기에 확인해 보십시오!</p>
			<a href="CustomHelp">QR More</a>
		</div>
		<div class="about_img">
			<img src="https://us.123rf.com/450wm/llesia/llesia1508/llesia150800142/44490419-scan-qr-code-to-mobile-phone-electronic-scan-digital-technology-barcode-vector-illustration.jpg?ver=6" alt="About" title="web design" />
		</div>
		</section>
	</div>
	<script src='//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js'></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/react/15.6.1/react.min.js'></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/react/15.6.1/react-dom.min.js'></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/classnames/2.2.5/index.min.js'></script>
	<script>
		'use strict';

		function _classCallCheck(instance, Constructor) {
			if (!(instance instanceof Constructor)) {
				throw new TypeError("Cannot call a class as a function");
			}
		}

		function _possibleConstructorReturn(self, call) {
			if (!self) {
				throw new ReferenceError(
						"this hasn't been initialised - super() hasn't been called");
			}
			return call
					&& (typeof call === "object" || typeof call === "function") ? call
					: self;
		}

		function _inherits(subClass, superClass) {
			if (typeof superClass !== "function" && superClass !== null) {
				throw new TypeError(
						"Super expression must either be null or a function, not "
								+ typeof superClass);
			}
			subClass.prototype = Object.create(superClass
					&& superClass.prototype, {
				constructor : {
					value : subClass,
					enumerable : false,
					writable : true,
					configurable : true
				}
			});
			if (superClass)
				Object.setPrototypeOf ? Object.setPrototypeOf(subClass,
						superClass) : subClass.__proto__ = superClass;
		}

		var CitiesSlider = function(_React$Component) {
			_inherits(CitiesSlider, _React$Component);

			function CitiesSlider(props) {
				_classCallCheck(this, CitiesSlider);

				var _this = _possibleConstructorReturn(this, _React$Component
						.call(this, props));

				_this.IMAGE_PARTS = 4;

				_this.changeTO = null;
				_this.AUTOCHANGE_TIME = 4000;

				_this.state = {
					activeSlide : -1,
					prevSlide : -1,
					sliderReady : false
				};
				return _this;
			}

			CitiesSlider.prototype.componentWillUnmount = function componentWillUnmount() {
				window.clearTimeout(this.changeTO);
			};

			CitiesSlider.prototype.componentDidMount = function componentDidMount() {
				var _this2 = this;

				this.runAutochangeTO();
				setTimeout(function() {
					_this2.setState({
						activeSlide : 0,
						sliderReady : true
					});
				}, 0);
			};

			CitiesSlider.prototype.runAutochangeTO = function runAutochangeTO() {
				var _this3 = this;

				this.changeTO = setTimeout(function() {
					_this3.changeSlides(1);
					_this3.runAutochangeTO();
				}, this.AUTOCHANGE_TIME);
			};

			CitiesSlider.prototype.changeSlides = function changeSlides(change) {
				window.clearTimeout(this.changeTO);
				var length = this.props.slides.length;

				var prevSlide = this.state.activeSlide;
				var activeSlide = prevSlide + change;
				if (activeSlide < 0)
					activeSlide = length - 1;
				if (activeSlide >= length)
					activeSlide = 0;
				this.setState({
					activeSlide : activeSlide,
					prevSlide : prevSlide
				});
			};

			CitiesSlider.prototype.render = function render() {
				var _this4 = this;

				var _state = this.state;
				var activeSlide = _state.activeSlide;
				var prevSlide = _state.prevSlide;
				var sliderReady = _state.sliderReady;

				return React.createElement('div', {
					className : classNames('slider', {
						's--ready' : sliderReady
					})
				}, React.createElement('p', {
					className : 'slider__top-heading'
				}, ''), React.createElement('div', {
					className : 'slider__slides'
				}, this.props.slides.map(function(slide, index) {
					return React.createElement('div', {
						className : classNames('slider__slide', {
							's--active' : activeSlide === index,
							's--prev' : prevSlide === index
						}),
						key : slide.city
					}, React.createElement('div', {
						className : 'slider__slide-content'
					}, React.createElement('h3', {
						className : 'slider__slide-subheading'
					}, slide.country || slide.city), React.createElement('h2',
							{
								className : 'slider__slide-heading'
							}, slide.city.split('').map(function(l) {
								return React.createElement('span', null, l);
							})), React.createElement('p', {
						className : 'slider__slide-readmore'
					}, '자세히 보기')), React.createElement('div', {
						className : 'slider__slide-parts'
					}, [].concat(Array(_this4.IMAGE_PARTS).fill()).map(
							function(x, i) {
								return React.createElement('div', {
									className : 'slider__slide-part',
									key : i
								}, React.createElement('div', {
									className : 'slider__slide-part-inner',
									style : {
										backgroundImage : 'url(' + slide.img
												+ ')'
									}
								}));
							})));
				})), React.createElement('div', {
					className : 'slider__control',
					onClick : function onClick() {
						return _this4.changeSlides(-1);
					}
				}), React.createElement('div', {
					className : 'slider__control slider__control--right',
					onClick : function onClick() {
						return _this4.changeSlides(1);
					}
				}));
			};

			return CitiesSlider;
		}(React.Component);

		var slides = [
				{
					city : '배송 업체',
					country : '믿음직한',
					img : 'https://st3.depositphotos.com/5988232/13045/v/950/depositphotos_130458400-stock-illustration-warehouse-and-shipping-port-infographics.jpg'
				},
				{
					city : '온라인 주문',
					country : '쉽고 빠른',
					img : 'http://kozkoz.com.au/data/editor/1611/thumb-e9ec0fe715b873e33501053872d3f4f3_1478912443_6507_750x369.jpg'
				},
				{
					city : '신선 상품',
					country : '직거래 장터',
					img : 'http://www.ytin.co.kr/wp-content/uploads/2016/01/17.jpg'
				} ];

		ReactDOM.render(React.createElement(CitiesSlider, {
			slides : slides
		}), document.querySelector('#app'));
		//# sourceURL=pen.js
	</script>
</body>
</html>
