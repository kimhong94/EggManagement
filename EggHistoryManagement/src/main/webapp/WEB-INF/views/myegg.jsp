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
@import
	url(http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css)
	;

body.modal-open #wrap {
	-webkit-filter: blur(7px);
	-moz-filter: blur(15px);
	-o-filter: blur(15px);
	-ms-filter: blur(15px);
	filter: blur(15px);
}

.modal-backdrop {
	background: #f7f7f7;
}

.close {
	font-size: 50px;
	display: block;
}

#qrmodal {
	background-color: white;
}

<!--
-->
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

.input-group-btn-vertical>.btn {
	display: block;
	float: none;
	width: 100%;
	max-width: 100%;
	padding: 8px;
	margin-left: -1px;
	position: relative;
	border-radius: 0;
}

.input-group-btn-vertical>.btn:first-child {
	border-top-right-radius: 4px;
}

.input-group-btn-vertical>.btn:last-child {
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
	<%@ include file="./include/navbar.jsp"%>
	<div class="form-group">
		<label>사업자번호</label>
		<input type="text" name="pid" class="form-control" id="pid" value="${login.producerVO.pid }" disabled>
	</div>

	<div class="container" style="margin-top: 25px">
		<div class="well">
			<table class="table" id="eggtable">
				<thead>
					<tr>
						<th>품종</th>
						<th>등급</th>
						<th>규격</th>
						<th>생산날짜</th>
						<th>총수량</th>
						<th style="width: 60px;"><button class="btn btn-primary" id="listEggBtn">리스트갱신</button></th>
					</tr>
				</thead>
				<tbody>

				</tbody>
			</table>
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
              <a href="user.html"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></i></a>
              <a class="qrbutton" href="/qrcode/{{ebirth}}" role="button" target="_blank" data-eid={{eid}}><i class="glyphicon glyphicon-qrcode"></i></a>
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
			var pid = $("#pid").val();
			var pageInfo = '/producer/'+ pid + '/myegg/eggs';
			$.getJSON(pageInfo, function(data) {
					printData(data, $("#eggtable tbody"), $('#listEggTemplate'));
			});
	}
	</script>

	<script type="text/javascript">
        
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
    	
    	$("#eggtable").on("click", ".qrbutton",function() {
			
    		var eid = $(this).data("eid");
    		alert(eid);
			var eggUrl = "http://168.131.151.207:8080/eggs/" + eid;
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