<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- jQuery 2.1.4 -->
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>

<script type="text/javascript" src="/resources/jqueryqr/jquery.qrcode.min.js"></script>
<script type="text/javascript" src="/resources/jqueryqr/jquery.qrcode.js"></script>
<script type="text/javascript" src="/resources/jqueryqr/qrcode.js"></script>

</head>
<body>
	<p>Render in table</p>
	<div id="qrcodeTable"></div>
	<p>Render in canvas</p>
	<div id="qrcodeCanvas"></div>
	<script>
	//jQuery('#qrcode').qrcode("this plugin is great");
	jQuery('#qrcodeTable').qrcode({
		render	: "table",
		text	: "한글되나요"
	});	
	jQuery('#qrcodeCanvas').qrcode({
		text	: "http://jetienne.com"
	});	
</script>
</body>
</html>