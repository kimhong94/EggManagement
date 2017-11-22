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

<script type="text/javascript" src="/resources/handlebars.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

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

#qrmodal{
	background-color: white;
}
</style>
</head>

<body>
<%@ include file="./include/navbar.jsp" %>


<div id="wrap">
	<div class="container-fluid">
		<section class="container">
			<div class="container-page">
				<div class="col-md-12">
					<h3 class="dark-grey">계란 등록</h3>

					<div class="form-group col-lg-12">
						<label>식별번호</label>
						<input type="text" name="eid" class="form-control" id="eid" value="" placeholder="생성 후 자동으로 부여" disabled>
					</div>

					<div class="form-group col-lg-6">
						<label>품종</label>
						<input type="text" name="ekind" class="form-control" id="ekind" value="">
					</div>
					
					<div class="form-group col-lg-6">
						<label>계란등급</label>
						<input type="text" name="erank" class="form-control" id="erank" value="">
					</div>
					<div class="form-group col-lg-6">
						<label>계란규격</label>
						<input type="text" name="eweight" class="form-control" id="eweight" value="">
					</div>

					<div class="form-group col-lg-12">
						<label>판개수</label>
						<input type="text" name="ecount" class="form-control" id="ecount" value="">
					</div>
					<div class="form-group col-lg-6">
						<label>생산지 사업자번호</label>
						<input type="text" name="pid" class="form-control" id="pid" value="${login.producerVO.pid}" disabled>
					</div>
					<div class="form-group col-lg-6">
						<label>생산지 위치</label>
						<input type="text" name="plocation" class="form-control" id="plocation" value="${login.producerVO.plocation}" disabled>
					</div>
					<div class="form-group col-lg-12">
					<button type="button" class="btn btn-primary btn-block" id="alertBtn" data-toggle="modal" data-target="#alertModal">QR code 생성 및 등록</button>
					</div>

				</div>

			</div>
		</section>
	</div>
</div>
<div class="container" style="margin-top:50px">
	<input id="qrtext" type="text" value="http://localhost:8080/eggs/" style="width: 80%" />
	<br />
</div>

<div class="container-fluid">
<div class="well">
    <table class="table" id="eggtable">
      <thead>
        <tr>
          <th>식별번호</th>
          <th>품종</th>
          <th>등급</th>
          <th>규격</th>
          <th>생산날짜</th>
          <th>유통기한</th>
          <th>판매번호(판매여부)</th>
          <th style="width: 36px;"><button class="btn btn-primary" id="listEggBtn">리스트갱신</button></th>
        </tr>
      </thead>
      <tbody>

      </tbody>
    </table>
</div>
</div>
	
	
	<!-- alertModal -->
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

<div class="modal fade" id="qrmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="container">
        <h4>아무곳이나 클릭하시면 이 창을 닫습니다.</h4>
    	<div id="qrcode" style="width: 300px; height: 300px; margin:0px auto"></div>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
   </div>
</div>


<script id="listEggTemplate" type="text/x-handlebars-template">
{{#each .}}
        <tr>
          <td>{{eid}}</td>
          <td>{{ekind}}</td>
          <td>{{erank}}</td>
          <td>{{eweight}}</td>
          <td>{{prettifyDate ebirth}}</td>
          <td>{{prettifyDate eexpire}}</td>
          <td>{{sid}}</td>
          <td>
              <a href="user.html"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></i></a>
              <a class="qrbutton" href="#qrmodal" role="button" data-toggle="modal" data-eid={{eid}}><i class="glyphicon glyphicon-qrcode"></i></a>
          </td>
        </tr>
{{/each }}          
</script>
	<script>
	Handlebars.registerHelper("prettifyDate", function(timeValue) {
		var dateObj = new Date(timeValue);
		var year = dateObj.getFullYear();
		var month = dateObj.getMonth() + 1;
		var date = dateObj.getDate();
		return year + "/" + month + "/" + date;
	});
	</script>

	<script>
	
	$(document).ready(function () {
		getList();
	});
	
	var printData = function(postArr, target, templateObject) {
		var template = Handlebars.compile(templateObject.html());
		var html = template(postArr);
		target.html(html);
	}

	function getList() {
			var pid = $("#pid").val();
			var pageInfo = '/producer/'+ pid + '/eggs';
			$.getJSON(pageInfo, function(data) {
					printData(data, $("#eggtable tbody"), $('#listEggTemplate'));
			});
	}
	
	</script>

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
			var eid= $("#eid").val();
			var pid = $("#pid").val();
			var ekind = $("#ekind").val();
			var erank = $("#erank").val();
			var eweight = $("#eweight").val();
			var ebirth = $("#ebirth").val();
			var eexpire = $("#eexpire").val();
			var plocation = $("#plocation").val();
			var ecount = $("#ecount").val();
			
			var content = JSON.stringify({
				eid : eid,
				pid : pid,
				ekind : ekind,
				erank : erank,
				eweight : eweight,
				ebirth : ebirth,
				eexpire : eexpire,
				plocation : plocation,
				ecount : ecount
			});
			
			$.ajax({
				type : 'post',
				url : '/eggs',
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
    
    <script>
    	$("#ebirth").on("change", function() {
    		
    		var birth = new Date($(this).val());
    		
    		var expire = new Date();
    
    		expire.setDate(birth.getDate()+25);
    		
    		var year = expire.getFullYear();
    		var month = expire.getMonth()+1;
    		var day = expire.getDate();
    		
    		var expireString = year + "-" + month + "-" + day;
    		
			$("#eexpire").val(expireString);
			
		});
    	
    	$("#eggtable").on("click", ".qrbutton",function() {
			
    		var eid = $(this).data("eid");
    		alert(eid);
			var eggUrl = "http://localhost:8080/eggs/" + eid;
			$("#qrtext").val(eggUrl);
			makeCode();
			
		});
    	$("#listEggBtn").on("click", function() {
			getList();
		});
    </script>
</body>

<!-- 
식별번호는 qr코드생성버튼을 누르면 만들어진다.
서버로 부터 식별번호를 받아와 qr코드를 생성한다.
 -->
</html>



