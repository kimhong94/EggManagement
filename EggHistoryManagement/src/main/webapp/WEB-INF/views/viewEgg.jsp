<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.egg {
	width: 100%;
}
</style>
<!-- jQuery 2.1.4 -->
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="/resources/bootstrap/js/bootstrap.min.js" rel="stylesheet" type="" />
<link href="/resources/Shop.css" rel="stylesheet" type="text/css">
</head>
<body>

	<div class="col-md-12" style="text-align: center; font-size: 40px;">계란 이력 정보</div>

	<div class="row">
		<div class="col-md-12" style="text-align: center;">
			<img id="img_egg" src="/resources/image/egg.jpg" alt="계란이미지">
		</div>
	</div>
	</div>


	<div class="container">
		<div class="panel panel-default">
			<!-- Default panel contents -->

			<div class="panel-heading">
				<div style="text-align: center; font-size: 25px;">상품 정보</div>
			</div>
			<!-- Table -->

			<table class="table">
				<tr id="info_egg">
					<div class="col-md-4">
						<th style="text-align: center;">품종</th>
					</div>
					<div class="col-md-4">
						<th style="text-align: center;">등급</th>
					</div>
					<div class="col-md-4">
						<th style="text-align: center;">중량</th>
					</div>
				</tr>
				<tr>
					<div class="col-md-4">
						<th style="text-align: center;">${egg.ekind }</th>
					</div>
					<div class="col-md-4">
						<th style="text-align: center;">${egg.erank }</th>
					</div>
					<div class="col-md-4">
						<th style="text-align: center;">${egg.eweight }</th>
					</div>
				</tr>
				<tr id="info_egg">
					<th colspan="3"><div style="text-align: center;">유통기한</div></th>
				</tr>
				<tr>
					<th colspan="3"><div style="text-align: center;">${egg.eexpire }</div></th>
				</tr>
				<tr>
					<th colspan="3"><div style="text-align: center;">
							이 제품의 유통기한은 생산 기한으로 부터 25일 이후이지만, <br>3도 정도에서 냉장보관 하시면 60일까지는 아무 이상 없으니 유의하시기 바랍니다.
						</div>
				</tr>
			</table>
			<br>
			<div class="panel-heading">
				<div style="text-align: center; font-size: 25px;">생산자 정보</div>
			</div>

			<table class="table">
				<tr id="info_egg">
					<div class="col-md-4">
						<th style="text-align: center;">사업자 번호</th>
					</div>
					<div class="col-md-4">
						<th style="text-align: center;">사업자 이름</th>
					</div>
					<div class="col-md-4">
						<th style="text-align: center;">생산지 정보</th>
					</div>
				</tr>
				<tr>
					<div class="col-md-4">
						<th style="text-align: center;">${egg.pid }</th>
					</div>
					<div class="col-md-4">
						<th style="text-align: center;">최광호</th>
					</div>
					<div class="col-md-4">
						<th style="text-align: center;">${egg.plocation }</th>
					</div>
				</tr>
			</table>
			<br>
			<div class="panel-heading">
				<div style="text-align: center; font-size: 25px;">유통 정보</div>
			</div>
			<table class="table">
				<tr id="info_egg">
					<div class="col-md-6">
						<th style="text-align: center;">유통 번호</th>
					</div>
					<div class="col-md-6">
						<th style="text-align: center;">유통 업체</th>
					</div>
				</tr>
				<tr>
					<div class="col-md-6">
						<th style="text-align: center;">${sell.sid }</th>
					</div>
					<div class="col-md-6">
						<th style="text-align: center;">${sell.dcompany}</th>
					</div>
				</tr>
				<tr id="info_egg">
					<th colspan="2"><div style="text-align: center;">출발 정보</div></th>
				</tr>
				<tr>
					<th colspan="2"><div style="text-align: center;">${sell.starttime }</div></th>
				</tr>
				</tr>
				<tr id="info_egg">
					<th colspan="2"><div style="text-align: center;">도착 정보</div></th>
				</tr>
				<tr>
					<th colspan="2"><div style="text-align: center;">${sell.arrivetime }</div></th>
				</tr>
				</div>
				</div>
</body>
</html>
