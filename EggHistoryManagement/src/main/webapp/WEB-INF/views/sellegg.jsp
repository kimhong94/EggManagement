<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
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

<script type="text/javascript" src="/resources/jqueryqr/jquery.qrcode.min.js"></script>


<style>
@import url(http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css);
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

<!-- -->

.spinner input {
  text-align: right;
}

.input-group-btn-vertical {
  position: relative;
  white-space: nowrap;
  width: 2%;
  vertical-align: middle;
  display: table-cell;
}

.input-group-btn-vertical > .btn {
  display: block;
  float: none;
  width: 100%;
  max-width: 100%;
  padding: 8px;
  margin-left: -1px;
  position: relative;
  border-radius: 0;
}

.input-group-btn-vertical > .btn:first-child {
  border-top-right-radius: 4px;
}

.input-group-btn-vertical > .btn:last-child {
  margin-top: -2px;
  border-bottom-right-radius: 4px;
}

.input-group-btn-vertical i {
  position: absolute;
  top: 0;
  left: 4px;
}
</style>
</head>

<body>
<%@ include file="./include/navbar.jsp" %>

<div id="wrap">
		<section class="container">
			<div class="container-page">
				<div class="col-md-6 col-xs-12 col-sm-6">
					<h3 class="dark-grey">계란 판매</h3>

					<div class="form-group col-lg-12">
						<label>판매번호</label>
						<input type="text" name="sid" class="form-control" id="sid" value="" placeholder="생성 후 자동으로 부여" disabled>
					</div>

					<div class="form-group col-lg-6">
						<label>주문자</label>
						<input type="text" name="sorderer" class="form-control" id="sorderer" value="">
					</div>
					
					<div class="form-group col-lg-6">
						<label>주문자주소</label>
						<input type="text" name="saddr" class="form-control" id="saddr" value="">
					</div>
					<div class="form-group col-lg-6">
						<label>판매자/판매자번호 (나)</label>
						<input type="text" name="pid" class="form-control" id="pid" value="${login.producerVO.pid }" disabled>
					</div>

					<div class="form-group col-lg-12">
						<label>배송업체</label>
						<input type="text" name="" class="form-control" id="" value="배송업체가 작성합니다." disabled>
					</div>
					<div class="form-group col-lg-12">
						<label>배송업체</label>
						<input type="text" name="" class="form-control" id="" value="배송업체가 작성합니다." disabled>
					</div>

				</div>

				<div class="col-md-6 col-xs-12 col-sm-6">
					<h3 class="dark-grey">유 의  사 항</h3>
					<p>By clicking on "Register" you agree to The Company's' Terms and Conditions</p>
					<p>While rare, prices are subject to change based on exchange rate fluctuations - should such a fluctuation happen, we may request an additional payment. You have the option to request a full refund or to pay the new price. (Paragraph 13.5.8)</p>
					<p>Should there be an error in the description or pricing of a product, we will provide you with a full refund (Paragraph 13.5.6)</p>
					<p>Acceptance of an order by us is dependent on our suppliers ability to provide the product. (Paragraph 13.5.6)</p>

					<button type="button" class="btn btn-primary" id="alertBtn" data-toggle="modal" data-target="#alertModal">QR code 생성 및 판매</button>

				</div>
			</div>
		</section>
</div>
<div class="container" style="margin-top:50px">
	<input id="qrtext" type="text" value="http://localhost:8080/eggs/" style="width: 80%" />
	<br />
</div>

<div class="container" style="margin-top:25px">
<div class="well">
    <table class="table" id="eggtable">
    <caption><h3>달걀목록</h3></caption>
      <thead>
        <tr>
          <th>품종</th>
          <th>등급</th>
          <th>규격</th>
          <th>생산날짜</th>
          <th>남은수량</th>
          <th style="width: 60px;"><button class="btn btn-primary" id="listEggBtn">리스트갱신</button></th>
        </tr>
      </thead>
      <tbody>

      </tbody>
    </table>
</div>
</div>
<div class="container" style="margin-top:25px">
<div class="well">
    <table class="table" id="selltable">
    <caption><h3>판매목록</h3></caption>
      <thead>
        <tr>
          <th>판매번호</th>
          <th>주문자</th>
          <th>주문자주소</th>
          <th>주문날짜</th>
          <th>갯수</th>
          <th style="width: 60px;"><button class="btn btn-primary" id="listEggBtn">리스트갱신</button></th>
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
        <h1>계란 판매</h1>
        <h3>계란판매 정보를 중앙 데이터베이스에 등록합니다.</h3>
        <h3>판매정보에 대한 QR코드를 제공해 드립니다.</h3>
        <h4>허위로 정보를 등록할시 처벌 받을 수 있습니다.</h4>
        <h4><kbd>esc</kbd> 혹은 아무곳이나 클릭하시면 이 창을 닫습니다.</h4>
        <hr>
        <div class="alert alert-danger"><h4>반드시 정보를 다시한번 확인해 주세요</h4></div>
        					<button type="button" class="btn btn-primary" id="makeQrBtn">QR code 생성 및 판매</button>
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
          <td>{{ekind}}</td>
          <td>{{erank}}</td>
          <td>{{eweight}}</td>
          <td data-ebirth={{ebirth}}>{{prettifyDate ebirth}}</td>
          <td>{{ecount}}</td>
          <td>
  <div class="input-group spinner">
    <input type="text" class="form-control" value=0 min="0" max="{{ecount}}">
    <div class="input-group-btn-vertical">
      <button class="btn btn-default" type="button"><i class="fa fa-caret-up"></i></button>
      <button class="btn btn-default" type="button"><i class="fa fa-caret-down"></i></button>
    </div>
  </div>
  <p class="help-block">Min 0 - Max {{ecount}}.</p>
          </td>
        </tr>
{{/each }}          
</script>
<script id="sellEggTemplate" type="text/x-handlebars-template">
{{#each .}}
        <tr>
          <td>{{sid}}</td>
          <td>{{sorderer}}</td>
          <td>{{saddr}}</td>
          <td data-ebirth={{stime}}>{{prettifyDate stime}}</td>
          <td>{{snumber}}</td>
          <td>
              <a href="user.html"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></i></a>
              <a class="qrbutton" href="#qrmodal" role="button" data-toggle="modal" data-sid={{sid}}><i class="glyphicon glyphicon-qrcode"></i></a>
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
		var hour = dateObj.getHours();
		var minute = dateObj.getMinutes();
		var second = dateObj.getSeconds();
		
		return year + "/" + month + "/" + date + " " + hour + ":" + minute + ":" + second;
	});
	</script>

	<script>
	
	$(document).ready(function () {
		getList();
	});
	
	// spinner input form
    $('#eggtable').on('click', ".spinner .btn:first-of-type",function() {
        var btn = $(this);
        var input = btn.closest('.spinner').find('input');
        if (input.attr('max') == undefined || parseInt(input.val()) < parseInt(input.attr('max'))) {    
          input.val(parseInt(input.val(), 10) + 1);
        } else {
          btn.next("disabled", true);
        }
      });
      $('#eggtable').on('click', ".spinner .btn:last-of-type", function() {
        var btn = $(this);
        var input = btn.closest('.spinner').find('input');
        if (input.attr('min') == undefined || parseInt(input.val()) > parseInt(input.attr('min'))) {    
          input.val(parseInt(input.val(), 10) - 1);
        } else {
          btn.prev("disabled", true);
        }
      });
	
	
	var printData = function(postArr, target, templateObject) {
		var template = Handlebars.compile(templateObject.html());
		var html = template(postArr);
		target.html(html);
	}

	function getList() {
		
			// egg의 group정보 출력
			var pid = $("#pid").val();
			var pageInfo = '/producer/'+ pid + '/sellegg/eggs';
			$.getJSON(pageInfo, function(data) {
					printData(data, $("#eggtable tbody"), $('#listEggTemplate'));
			});
			
			// sellInfo 출력
			pageInfo = "/producer/" + pid + "/sellegg";
			$.getJSON(pageInfo, function(data) {
				printData(data, $("#selltable tbody"), $('#sellEggTemplate'));
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
        	
        	// 판매번호는 자동갱신
			var sorderer= $("#sorderer").val();
			var saddr = $("#saddr").val();
			var pid = $("#pid").val();
			// 갯수 계산
			
			var rows = $("#eggtable tbody tr");
			
			// 총 갯수
			var snumber = 0;
			
			var eggs = new Array();
			$(rows).each(function(index) {
				var ecount = $(this).find("input").val();
				if( ecount == 0)
					return true;
				
				//이거 덧셈이 안된다.
				snumber = parseInt(snumber) + parseInt(ecount);
				var egg = {};
				egg.pid = pid;
				egg.ecount = ecount;
				egg.ekind = $(this).children().eq(0).text();
				egg.erank = $(this).children().eq(1).text();
				egg.eweight = $(this).children().eq(2).text();
				egg.ebirth = $(this).children().eq(3).data("ebirth");
				
				eggs.push(egg);
			});
			
			var content = JSON.stringify({
				pid : pid,
				sorderer : sorderer,
				saddr : saddr,
				snumber : snumber,
				eggs : eggs
			});
			
			$.ajax({
				type : 'post',
				url : "/producer/" + pid + "/sellegg",
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
    	
    	$("#selltable").on("click", ".qrbutton",function() {
			
    		var sid = $(this).data("sid");
    		alert(sid);
    		// todo
			var sellUrl = "http://168.131.151.207:8080/eggs/" + sid;
			$("#qrtext").val(sellUrl);
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