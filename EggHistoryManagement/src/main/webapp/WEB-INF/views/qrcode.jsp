<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
</head>
<body>

	
<script id="qrcodeTemplate" type="text/x-handlebars-template">
{{#each .}}
	<div class="col-md-2 qr-container" data-eid={{eid}}>
		<p>{{eid}}</p>
		<div id="{{eid}}" style="width: 300px; height: 300px; margin: 0px auto"></div>
	</div>
{{/each }}          
</script>

<script type="text/javascript">

var time = ${time};
	
	
$(document).ready(function () {
	getList();
});

var printData = function(postArr, target, templateObject) {
	
	var template = Handlebars.compile(templateObject.html());
	var html = template(postArr);
	target.html(html);
}

function getList() {
		var pageInfo = "/qrcode/eggs/" + time;
		$.getJSON(pageInfo, function(data) {
			printData(data, $("body"), $("#qrcodeTemplate"));
			
			$(".qr-container").each(function(){
				var eid = $(this).data("eid");
				makeQrCode(eid, "http://168.131.189.112:8080/eggs/"+eid);
			});
			
		});
}

function makeQrCode(qrid, text) {
	var qrcode = new QRCode(document.getElementById(qrid), {
	    width: 200,
	    height: 200
	});
	var elText = text;
	qrcode.makeCode(elText);
}

$("#qrtext").
    on("blur", function () {
        makeCode();
    }).
    on("keydown", function (e) {
        if (e.keyCode == 13) {
            makeCode();
        }
    });
</script>
</body>
</html>