<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Document</title>

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
</head>

<body>
	<div class="container-fluid">
		<section class="container">
			<div class="container-page">
				<div class="col-md-6">
					<h3 class="dark-grey">배송</h3>

					<div class="form-group col-lg-12">
						<label>판매번호</label>
						<input type="text" name="sid" class="form-control" id="sid" value="" disabled>
					</div>

					<div class="form-group col-lg-6">
						<label>주문자</label>
						<input type="text" name="sorderer" class="form-control" id="sorderer" value="" disabled>
					</div>

					<div class="form-group col-lg-12">
						<label>주문자주소</label>
						<input type="text" name="saddr" class="form-control" id="saddr" value="" disabled>
					</div>
					<div class="form-group col-lg-12">
						<label>주문시간</label>
						<input type=text name="stime" class="form-control" id="stime" value="" disabled>
					</div>
					<div class="form-group col-lg-12">
						<label>판매자/판매자번호</label>
						<input type="text" name="pid" class="form-control" id="pid" value="" disabled>
					</div>
					<div class="form-group col-lg-12">
						<label>배송업체ID</label>
						<input type="text" name="" class="form-control" id="did" value="${deliverVO.deliverid}" disabled>
					</div>
					<div class="form-group col-lg-12">
						<label>배송업체</label>
						<input type="text" name="" class="form-control" id="dcompany" value="${deliverVO.dcompany}" disabled>
					</div>
					<div class="form-group col-lg-12">
						<label>배송자</label>
						<input type="text" name="" class="form-control" id="ddeliver" placeholder="배송업체가 작성합니다." value="${deliver.ddeliver }">
					</div>
					<div class="form-group col-lg-12">
						<input type="button" name="" class="btn btn-lg btn-success btn-block" id="delivebtn" value="등록하기">
					</div>
				</div>
				<div class="col-md-6" style="margin-top: 120px">
					<video id="preview" autoplay="autoplay" class="active" style="transform: scaleX(-1);"></video>
				</div>
			</div>
		</section>
	</div>
	<div class="container">
		<div class="col-md-12">
			<div class="well">
				<table class="table" id="eggtable">
					<thead>
						<tr>
							<th>식별번호</th>
							<th>품종</th>
							<th>등급</th>
							<th>규격</th>
							<th>생산날짜</th>
						</tr>
					</thead>
					<tbody>

					</tbody>
				</table>
			</div>
		</div>

	</div>




	<script id="listEggTemplate" type="text/x-handlebars-template">
{{#each .}}
        <tr>
          <td>{{eid}}</td>
          <td>{{ekind}}</td>
          <td>{{erank}}</td>
          <td>{{eweight}}</td>
          <td data-ebirth={{ebirth}}>{{prettifyDate ebirth}}</td>
        </tr>
{{/each }}          
	</script>
	<script type="text/javascript">
	Handlebars.registerHelper("prettifyDate", function(timeValue) {
		var dateObj = new Date(timeValue);
		var year = dateObj.getFullYear();
		var month = dateObj.getMonth() + 1;
		var date = dateObj.getDate();
		var hour = dateObj.getHours();
		var minute = dateObj.getMinutes();
		var second = dateObj.getSeconds();
		
		return year + "/" + month + "/" + date + " " + hour + ":" + minute + ":" + second;
	});
	</script>
	<script type="text/javascript">
	$(document).ready(function () {
	});
	
	var printData = function(postArr, target, templateObject) {
		var template = Handlebars.compile(templateObject.html());
		var html = template(postArr);
		target.html(html);
	}

	function getList() {
		
			// egg의 group정보 출력
			var sid = $("#sid").val();
			var pageInfo = '/eggs/sellegg/'+ sid;
			$.getJSON(pageInfo, function(data) {
				alert(pageInfo);
				printData(data, $("#eggtable tbody"), $('#listEggTemplate'));
			});
	}
	
	</script>
	<script type="text/javascript">
        
        let scanner = new Instascan.Scanner({ video: document.getElementById('preview') });
        scanner.addListener('scan', function (content) {
			$.ajax({
				type : 'get',
				url : content,
				headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "get"
				},
				data : content,
				dataType : 'text',
				success : function(result) {
					result = JSON.parse(result);
					alert(result.sid);
					
					var date = new Date(result.stime);
					
					$("#sid").val(result.sid);
					$("#sorderer").val(result.sorderer);
					$("#saddr").val(result.saddr);
					$("#pid").val(result.pid);
					$("#stime").val(date.toString());
					$("#snumber").val(result.snumber);

					getList();
				}
				});
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
	<script type="text/javascript">
	$("#delivebtn").on("click", function() {

		var sid = $("#sid").val();
		var did = $("#did").val();
		var dcompany = $("#dcompany").val();
		var ddeliver = $("#ddeliver").val();
		
		var content = JSON.stringify({
			sid : sid,
			did : did,
			dcompany : dcompany,
			ddeliver : ddeliver
		});
		
		$.ajax({
			type : 'post',
			url : "/deliver/deliveegg/" + sid,
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "POST"
			},
			data : content,
			dataType : 'text',
			success : function(result) {
				if (result == 'SUCCESS') {
					alert("등록 되었습니다.");
					$("#alertModal").modal("hide");
					getList();
				}
			}
		});

	});
	</script>
</body>

</html>
