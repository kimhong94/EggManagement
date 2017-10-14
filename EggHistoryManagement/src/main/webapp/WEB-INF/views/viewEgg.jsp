<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
   .egg {
      width : 100%;
      
   }
</style>
<!-- jQuery 2.1.4 -->
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- Bootstrap 3.3.2 JS -->
<script src="/resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="/resources/bootstrap/js/bootstrap.min.js" rel="stylesheet" type="" />
</head>
<body>
<div class = "center_name" align = "center">
   <h1>계란 이력 정보</h1></div>
<div style = "margin : 0 auto; border : 0">
<div class="row">
  <div class="egg">
  
    <a href="#" class="thumbnail">
      <img src="/resources/image/egg.jpg" alt="계란입니ㅇ드">
    </a>
  </div>
</div></div>


<div class="panel panel-default">
  <!-- Default panel contents -->
  
  <div class="panel-heading">
  <div style = "text-align : center;">상품 정보</div>
  </div><br>
  <!-- Table -->
  <table class="table">
     <tr>
        <th width = "20%">
        <div style="text-align : right;">${egg.ekind}</div></th>
        <th width = "20%">
        <div style="text-align : center;">${egg.erank}</div></th>
        <th width = "20%">
        <div style="text-align : left;">${egg.eweight}</div></th>
     </tr>
    <tr>
       <th colspan="3" width = "60%"><div style="text-align : center;">${egg.eexpire}</div></th>
    </tr>
    <tr>
       <th colspan = "3"><div style="text-align : center;">
       이 제품의 유통기한은 생산 기한으로 부터 25일 이후이지만, <br>3도 정도에서 냉장보관 하시면 60일까지는 아무 이상 없으니 유의하시기 바랍니다.</div></th>
      </tr>     
  </table><br>
   <div class="panel-heading">
  <div style = "text-align : center;">검사 품목</div>
  </div><br>
   <div class="panel-heading">
  <div style = "text-align : center;">생산지 정보</div>  
  </div><br>
      <table class="table">
     <tr>
        <th width = "20%">
        <div style="text-align : center;">${egg.pid}</div></th>
        <th width = "20%">
        <div style="text-align : center;">${egg.plocation}</div></th>
     </tr></table>
  
   <div class="panel-heading">
  <div style = "text-align : center;">유통 정보</div>
  </div><br>
  
</div>
</body>
</html>