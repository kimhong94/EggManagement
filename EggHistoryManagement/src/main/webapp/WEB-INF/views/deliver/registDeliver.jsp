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

<link href="/resources/Shop.css" rel="stylesheet" type="text/css">

<style type="text/css">
#qrmodal{
	background-color: white;
}
</style>
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
					<h1>배송사원 등록: 등록</h1>
				</div>
				<div class="panel-body">
					<div align="right"></div>
					<label>배송업체 번호 (ID) :</label>
					<input type='text' class='form-control' id="deliverid" value='${login.deliverVO.deliverid}' disabled>
					<label>배송업체 이름 : </label>
					<input type='text' class='form-control' value='${login.deliverVO.dcompany}' disabled>
					<label>배송사원 이름 : </label>
					<input type='text' class='form-control' id="ddeliver" value="" required>
					<label>배송사원 연락처 : </label>
					<input type='text' class='form-control' id="deliverphone" value="" required>
					<div align="right" style="margin-top: 10px">
						<input class="btn btn-lg btn-success" type="button" id="registerDeliver" value="등록하기">
					</div>
				</div>

			</div>
		</div>
	</div>

	<div class="container" style="margin-top: 50px">
		<input id="qrtext" type="text" value="http://localhost:8080/eggs/" style="width: 80%" />
		<br />
	</div>

	<div class="container" style="margin-top: 25px">
		<div class="well">
			<table class="table" id="delivertable">
				<caption>
					<h3>배달사원 목록</h3>
				</caption>
				<thead>
					<tr>
						<th>이름</th>
						<th>전화번호</th>
						<th>UUID - 배달사원 Login 번호</th>

					</tr>
				</thead>
				<tbody>

				</tbody>
			</table>
		</div>
	</div>

	<div class="modal fade" id="qrmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="container">
			<h4>아무곳이나 클릭하시면 이 창을 닫습니다.</h4>
			<div id="qrcode" style="width: 300px; height: 300px; margin: 0px auto"></div>
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
		</div>
	</div>


	<script id="listDeliverTemplate" type="text/x-handlebars-template">
{{#each .}}
        <tr>
          <td>{{ddeliver}}</td>
          <td>{{deliverphone}}</td>
          <td>{{deliveruuid}}</td>
          <td>
              <a href="user.html"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></i></a>
              <a class="qrbutton" href="#qrmodal" role="button" data-toggle="modal" data-uuid={{deliveruuid}}><i class="glyphicon glyphicon-qrcode"></i></a>
          </td>
        </tr>
{{/each }}          
</script>
	<script type="text/javascript">
		$(document).ready(function() {
			getList();
		});

		var printData = function(postArr, target, templateObject) {
			var template = Handlebars.compile(templateObject.html());
			var html = template(postArr);
			target.html(html);
		}
		function getList() {

			// egg의 group정보 출력
			var deliverid = $("#deliverid").val();
			var pageInfo = '/deliver/' + deliverid + '/employees';
			$.getJSON(pageInfo, function(data) {
				printData(data, $("#delivertable tbody"),
						$('#listDeliverTemplate'));
			});
		}
	</script>

	<script type="text/javascript">
		var qrcode = new QRCode(document.getElementById("qrcode"), {
			width : 200,
			height : 200
		});
		function makeCode() {
			var elText = $("#qrtext").val();

			qrcode.makeCode(elText);
		}
		makeCode();
		$("#qrtext").on("blur", function() {
			makeCode();
		}).on("keydown", function(e) {
			if (e.keyCode == 13) {
				makeCode();
			}
		});
	</script>

	<script type="text/javascript">
		$("#registerDeliver").on("click", function() {

			var deliverid = $("#deliverid").val();
			var deliverphone = $("#deliverphone").val();
			var ddeliver = $("#ddeliver").val();

			alert
			var content = JSON.stringify({
				deliverid : deliverid,
				deliverphone : deliverphone,
				ddeliver : ddeliver
			});

			alert(content);

			$.ajax({
				type : 'post',
				url : '/deliver/registdeliver',
				headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "POST"
				},
				data : content,
				dataType : 'text',
				success : function(result) {
					if (result == "SUCCESS") {
						alert("등록 되었습니다.");
						getList();
					}
				}
			});

		});
	</script>

	<script type="text/javascript">
		$("#delivertable").on("click", ".qrbutton", function() {

			var uuid = $(this).data("uuid");
			// todo
			var deliverUrl = "http://localhost:8080/deliver/autologin/" + uuid;
			$("#qrtext").val(deliverUrl);
			makeCode();

		});
	</script>
</body>
</html>
