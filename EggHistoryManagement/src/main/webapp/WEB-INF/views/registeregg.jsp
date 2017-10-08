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

<script type="text/javascript" src="/resources/jqueryqr/jquery.qrcode.min.js"></script>


<style>
body.modal-open #wrap{
    -webkit-filter: blur(7px);
    -moz-filter: blur(15px);
    -o-filter: blur(15px);
    -ms-filter: blur(15px);
    filter: blur(15px);
}
  
.modal-backdrop {background: #f7f7f7;}

.close {
    font-size: 50px;
    display:block;
}
</style>
</head>

<body>

<div id="wrap">
	<div class="container-fluid">
		<section class="container">
			<div class="container-page">
				<div class="col-md-6">
					<h3 class="dark-grey">게란 등록</h3>

					<div class="form-group col-lg-12">
						<label>식별번호</label>
						<input type="text" name="" class="form-control" id="producingId" value="" >
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
					<h3 class="dark-grey">유 의  사 항</h3>
					<p>By clicking on "Register" you agree to The Company's' Terms and Conditions</p>
					<p>While rare, prices are subject to change based on exchange rate fluctuations - should such a fluctuation happen, we may request an additional payment. You have the option to request a full refund or to pay the new price. (Paragraph 13.5.8)</p>
					<p>Should there be an error in the description or pricing of a product, we will provide you with a full refund (Paragraph 13.5.6)</p>
					<p>Acceptance of an order by us is dependent on our suppliers ability to provide the product. (Paragraph 13.5.6)</p>

					<button type="button" class="btn btn-primary" id="alertBtn" data-toggle="modal" data-target="#alertModal">QR code 생성 및 등록</button>

				</div>
			</div>
		</section>
	</div>
</div>
	<div class="container" style="margin-top:50px">
		<input id="qrtext" type="text" value="http://localhost:8080/eggs/" style="width: 80%" />
		<br />
		<div id="qrcode" style="width: 300px; height: 300px; margin-top: 15px;"></div>
	</div>

	<div class="container">
		<video id="preview" autoplay="autoplay" class="active" style="transform: scaleX(-1);"></video>
	</div>
	
	
	
	<!-- Modal -->
<div class="modal fade" id="alertModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="container">
    <div class="row">
      <div class="col-sm-6 col-sm-offset-3 text-center">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
        <br><br>
        <h1>계란 등록</h1>
        <h3>계란의 정보를 중앙 데이터베이스에 등록합니다.</h3>
        <h3>등록 계란에 대한 QR코드를 제공해 드립니다.</h3>
        <h4>허위로 정보를 등록할시 처벌 받을 수 있습니다.</h4>
        <h4><kbd>esc</kbd> 혹은 아무곳이나 클릭하시면 이 창을 닫습니다.</h4>
        <hr>
        <div class="alert alert-danger"><h4>반드시 정보를 다시한번 확인해 주세요</h4></div>
        					<button type="button" class="btn btn-primary" id="makeQrBtn">QR code 생성 및 등록</button>
      </div>
    </div>
  </div>
</div>
	

	<script type="text/javascript">
        var qrcode = new QRCode(document.getElementById("qrcode"), {
            width: 200,
            height: 200
        });
        function makeCode() {
            var elText = $("#qrtext").val();



            qrcode.makeCode(elText);
        }
        makeCode();
        $("#qrtext").
            on("blur", function () {
                makeCode();
            }).
            on("keydown", function (e) {
                if (e.keyCode == 13) {
                    makeCode();
                }
            });
        
        $("#makeQrBtn").on("click", function() {
			var producingId= $("#producingId").val();
			var kindofEgg = $("#kindofEgg").val();
			var producingDate = $("#producingDate").val();
			var farmId = $("#farmId").val();
			
			var content= JSON.stringify({
				producingId : producingId,
				kindofEgg : kindofEgg,
				producingDate : producingDate,
				farmId : farmId
			});
			$("#qrtext").val(content);
			
			makeCode();
			
			$("#alertModal").modal("hide");
		});
    </script>
</body>

<!-- 
식별번호는 qr코드생성버튼을 누르면 만들어진다.
서버로 부터 식별번호를 받아와 qr코드를 생성한다.
 -->
</html>