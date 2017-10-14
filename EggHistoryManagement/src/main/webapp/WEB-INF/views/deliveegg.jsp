<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Document</title>

<!-- jQuery 2.1.4 -->
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- Bootstrap 3.3.2 JS -->
<script src="/resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="/resources/bootstrap/js/bootstrap.min.js" rel="stylesheet" type="" />

<script type="text/javascript" src="/resources/qrcodejs/qrcode.js"></script>
<script type="text/javascript" src="/resources/instascan/instascan.min.js"></script>
</head>

<body>
	<div class="container-fluid">
		<section class="container">
			<div class="container-page">
				<div class="col-md-6">
					<h3 class="dark-grey">Registration</h3>

					<div class="form-group col-lg-12">
						<label>가공장번호</label>
						<input type="text" name="" class="form-control" id="processingId" value="14-72007010" disabled>
					</div>
					<div class="form-group col-lg-12">
						<label>가공장위치</label>
						<input type="text" name="" class="form-control" id="producingAddress" value="광주광역시  북구 광호네달걀세척장" disabled>
					</div>

					<div class="form-group col-lg-12">
						<label>생산번호</label>
						<input type="text" name="" class="form-control" id="producingId" value="">
					</div>

					<div class="form-group col-lg-6">
						<label>품종</label>
						<input type="text" name="" class="form-control" id="kindofEgg" value="">
					</div>

					<div class="form-group col-lg-6">
						<label>생산날짜</label>
						<input type="text" name="" class="form-control" id="producingDate" value="">
					</div>

					<div class="form-group col-lg-6">
						<label>농장번호</label>
						<input type="text" name="" class="form-control" id="farmId" value="">
					</div>

				</div>

				<div class="col-md-6">
					<h3 class="dark-grey">Terms and Conditions</h3>
					<p>By clicking on "Register" you agree to The Company's' Terms and Conditions</p>
					<p>While rare, prices are subject to change based on exchange rate fluctuations - should such a fluctuation happen, we may request an additional payment. You have the option to request a full refund or to pay the new price. (Paragraph 13.5.8)</p>
					<p>Should there be an error in the description or pricing of a product, we will provide you with a full refund (Paragraph 13.5.6)</p>
					<p>Acceptance of an order by us is dependent on our suppliers ability to provide the product. (Paragraph 13.5.6)</p>

				</div>
			</div>
		</section>
	</div>
	<div class="container"></div>

	<div class="container">
		<video id="preview" autoplay="autoplay" class="active" style="transform: scaleX(-1);"></video>
	</div>

	<script type="text/javascript">
        
        let scanner = new Instascan.Scanner({ video: document.getElementById('preview') });
        scanner.addListener('scan', function (content) {
        	alert(content);
        	console.log(content);
			var Obj = JSON.parse(content);
			
			$("#producingId").val(Obj.producingId);
			$("#kindofEgg").val(Obj.kindofEgg);
			$("#producingDate").val(Obj.producingDate);
			$("#farmId").val(Obj.farmId);
			
        });
        Instascan.Camera.getCameras().then(function (cameras) {
          if (cameras.length > 0) {
            scanner.start(cameras[0]);
          } else {
            console.error('No cameras found.');
          }
        }).catch(function (e) {
          console.error(e);
        });
        
    </script>
</body>

</html>