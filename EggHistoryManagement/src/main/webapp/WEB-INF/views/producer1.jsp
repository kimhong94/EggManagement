<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="/resources/bootstrap/js/bootstrap.min.js" rel="stylesheet" type="" />

</head>
<body>

<%@include file="./include/navbar.jsp" %>

<div class="container" style="margin-top:50px">
 <div class="row">
   <div class="panel panel-primary">
    <div class="panel-heading"> 사업자 정보 :</div>
     <div class="panel-body">
	  <div align="right"><a href='#'><span class='glyphicon glyphicon-tasks'></span> &nbsp Edit ! </a></div>
	  <label>사업자 번호 (ID) :</label><input type='text' class='form-control'  value='${login.producerVO.pid}'  disabled>
      <label>사업장 이름 : </label><input type='text' class='form-control'  value='${login.producerVO.pname}' disabled> 
	  <label>사업장 위치 : </label><input type='text' class='form-control'  value='${login.producerVO.plocation}' disabled>
	  <label>사업장 연락처 : </label><input type='text' class='form-control'  value='${login.producerVO.pphone}' disabled>
	  <label>Email :</label><input type='text' class='form-control'  value='just' disabled> 
    </div>
   </div>
 </div>
</div>

<div class="container">

    <div class="alert alert-info">
        <a href="/producer/registeregg" class="btn btn-xs btn-primary pull-right">계란 등록</a>
        <strong>Info:</strong> 계란을 등록합니다.
    </div>

    <div class="alert alert-info">
        <a href="/producer/sellegg" class="btn btn-xs btn-primary pull-right">계란 판매</a>
        <strong>Info:</strong> 계란을 판매합니다.
    </div>

    <div class="alert alert-danger">
        <a href="#" class="btn btn-xs btn-danger pull-right">don't do an action</a>
        <strong>Danger:</strong> you shouldn't do an action!
    </div>

</div>

</body>
</html>