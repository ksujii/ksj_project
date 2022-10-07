<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="layout/header.jspf"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
hr {
  background-color: White;
   border : 0;
}
td {
	text-align: center;
}

body {
  text-align: center;
}
table {
    margin:auto; 
	 width: 65%;
    height: 150px;
 
}

.nav-tabs > li {
    float:none;

    display:inline-block;

    zoom:1;
}
.nav-tabs {

    text-align:center;

}
</style>
</head>
<body>


<div class="container">
 <h2 ><b>부대시설</b></h2>
 <hr>
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">로비</a></li>
    <li><a data-toggle="tab" href="#menu1">바베큐</a></li>
    <li><a data-toggle="tab" href="#menu2">수영장 및 놀이시설</a></li>
    <li><a data-toggle="tab" href="#menu3">족구장&풋살장</a></li>    
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
    <hr>
      <h2>로비</h2>
      <hr>
     <table>
		<tr>
			<td>
				<img src="resources/img/ro1.jpg">
			</td>
		</tr>
		<tr>
			<td>
				<img src="resources/img/ro2.jpg">
			</td>
		</tr>
		<tr>
			<td>
				<img src="resources/img/ro3.jpg">
			</td>
		</tr>
	</table>
    </div>
    
    <div id="menu1" class="tab-pane fade">
    <hr>
      <h2>바베큐</h2>
      <hr>
       <table>
		<tr>
			<td>
				<img src="resources/img/ba1.jpg">
			</td>
		</tr>
        <tr>
			<td>
				<img src="resources/img/ba2.jpg">
			</td>
		</tr>
	</table>
    </div>
    
    <div id="menu2" class="tab-pane fade">
    <hr>
      <h2>수영장 및 놀이시설</h2>
      <p>사계절 인피니티 온수풀로 새롭게 리뉴얼 되었습니다.
      <p>성인풀: 20m*6m(수심1m)/공용온수스파풀 : 3m * 4m( 수심0.9m)
      <p>개인온수스파풀: 3m*5m(수심1m)/워터슬라이드 에어풀장:7m*10m(수심0.7m)
      <hr>
       <table>
		<tr>
			<td>
				<img src="resources/img/pool1.jpg">
			</td>
		</tr>
        <tr>
			<td>
				<img src="resources/img/pool2.jpg">
			</td>
		</tr>
	</table>
    </div>
    
    <div id="menu3" class="tab-pane fade">
    <hr>
      <h2>족구장&풋살장</h2>
      <hr>
       <table>
		<tr>
			<td>
				<img src="resources/img/game.jpg">
			</td>
		</tr>
	</table>
    </div>
    
  </div>
</div>
<hr>
</body>
</html>
<%@include file="layout/footer.jspf"%>