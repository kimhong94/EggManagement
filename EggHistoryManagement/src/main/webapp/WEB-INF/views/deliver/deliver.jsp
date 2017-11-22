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
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- Bootstrap 3.3.2 JS -->
<script src="/resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="/resources/bootstrap/js/bootstrap.min.js" rel="stylesheet" type="" />

<script type="text/javascript" src="/resources/qrcodejs/qrcode.js"></script>
<script type="text/javascript" src="/resources/instascan/instascan.min.js"></script>

<script type="text/javascript" src="/resources/handlebars.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<script type="text/javascript" src="/resources/jqueryqr/jquery.qrcode.min.js"></script>

<link href="/resources/Shops.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="navbar navbar-inverse navbar-static-top">

		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/" style="font-family: Malgun Gothic"> 계란 이력관리 시스템 </a>

			</div>

			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li class=""><a href="/scode/belt"></span>내 정보</a></li>
					<li class=""><a href="/profile"></span>로그아웃</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="container" style="margin-top: 50px">
		<div class="row">
			<div class="panel panel-success">
				<div class="panel-heading">
					<h1>사업자 정보 : 배송</h1>
				</div>
				<div class="panel-body">
					<div align="right">
						<a href='#'><span class='glyphicon glyphicon-tasks'></span> &nbsp Edit ! </a>
					</div>
					<label>배송업체 번호 (ID) :</label>
					<input type='text' class='form-control' value='${login.deliverVO.deliverid}' disabled>
					<label>배송업체 이름 : </label>
					<input type='text' class='form-control' value='${login.deliverVO.dcompany}' disabled>
					<label>배송업체 위치 : </label>
					<input type='text' class='form-control' value='${login.deliverVO.dlocation}' disabled>
					<label>배송업체 연락처 : </label>
					<input type='text' class='form-control' value='${login.deliverVO.dphone}' disabled>
					<label>Email :</label>
					<input type='text' class='form-control' value='just' disabled>
				</div>
			</div>
		</div>
	</div>

	<div id="setHome">
		<div class="container">
			<div class="row">
				<!-- Boxes de Acoes -->

				<a id="under" href="/deliver/deliveegg">
					<div class="col-xs-12 col-sm-6 col-lg-4">
						<div class="box">
							<div class="icon">
								<div class="image">
									<i class="fa fa-plane"></i>
								</div>
								<div class="info">
									<h3 class="title">배송</h3>
									<p></p>
									<div class="more">
										배송 하기 <i class="fa fa-angle-double-right"></i>
									</div>
								</div>
							</div>
							<div class="space"></div>
						</div>
				</a>
			</div>


			<a id="under" href="#">
				<div class="col-xs-12 col-sm-6 col-lg-4">
					<div class="box">
						<div class="icon">
							<div class="image">
								<i class="fa fa-search"></i>
							</div>

							<div class="info">
								<h3 class="title">내 배송</h3>
								<p></p>
								<div class="more">
									내 배송 <i class="fa fa-angle-double-right"></i>
								</div>
							</div>
						</div>
						<div class="space"></div>
					</div>
			</a>
		</div>
		<a id="under" href="/deliver/registdeliver">
			<div class="col-xs-12 col-sm-6 col-lg-4">
				<div class="box">
					<div class="icon">
						<div class="image">
							<i class="fa fa-search"></i>
						</div>

						<div class="info">
							<h3 class="title">사원등록</h3>
							<p></p>
							<div class="more">
								사원 등록 하기<i class="fa fa-angle-double-right"></i>
							</div>
						</div>
					</div>
					<div class="space"></div>
				</div>
		</a>
	</div>
	<!-- /Boxes de Acoes -->
	</div>
	</div>
	</div>
</body>
</html>
