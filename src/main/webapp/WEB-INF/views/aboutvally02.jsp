<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="layout/header.jspf"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title>간단한 지도 표시하기</title>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=ad1cptomag"></script>
     <style>

th, td {
  text-align: center;
}
table {
    margin:auto; 
    border-collapse: collapse;
    border-radius: 10px;
    border-style: hidden;
    box-shadow: 0 0 0 1px #b4b4b4;
    width: 65%;
    height: 120px;
 
}
hr {
  background-color: White;
   border : 0;
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
<hr>
<h2 style="text-align:center;"><b>찾아오시는길</b></h2>
<hr>
<div class="container" id="map" style="width:50%;height:400px;"></div>

<script>
var HOME_PATH = window.HOME_PATH || '.';
var position = new naver.maps.LatLng(36.3864491 ,129.0908039);

var map = new naver.maps.Map('map', {
    center: position,
    zoom: 18
});

var marker = new naver.maps.Marker({
    map: map,
    position: position,
    icon: {
        path: [
            new naver.maps.Point(0, 70), new naver.maps.Point(20, 100), new naver.maps.Point(40, 70),
            new naver.maps.Point(30, 70), new naver.maps.Point(70, 0), new naver.maps.Point(10, 70)
        ],
        style: "closedPath",
        anchor: new naver.maps.Point(23, 103),
        fillColor: '#ff0000',
        fillOpacity: 1,
        strokeColor: '#000000',
        strokeStyle: 'solid',
        strokeWeight: 3
    }
});
</script>
<hr>
<div class="container">

<table border="1" bordercolor="LightGray" width="750">
   <tr>
      <th>주소</th>
      <td>경상북도 청송군 청송읍 주왕산로 293-30</td>
   </tr>
   <tr>
      <th>전화번호</th>
      <td>010-1234-5678</td>
    </tr>
</table>

<hr>
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#menu1">자가용</a></li>
    <li><a data-toggle="tab" href="#menu2">대중교통/픽업</a></li>

  </ul>

  <div class="tab-content">
   
    <div id="menu1" class="tab-pane fade in active">
    
	<hr>
	<h3 style="text-align:center;"><b>자가용</b></h3>
	<hr>
      <table border="1" bordercolor="LightGray" width="750">
   <tr>
      <th>오시는 길</th>
      <td>
      서울에서 오시는 길 (소요시간 : 자가용 2시간 30분대)<p>
① 중부고속도로 → 호법JC → 영동고속도로 → 여주 JC → 중부내륙고속도로 → 낙동JC → 상주영덕고속도로 → 청송IC<p>
② 경부고속도로 → 신갈JC → 영동고속도로 → 여주 JC → 중부내륙고속도로 → 낙동JC → 상주영덕고속도로 → 청송IC<p>

 대전에서 오시는 길<p>
① 호남고속도로지선 → 회덕JC → 경부고속도로 → 청주JC → 상주영덕고속도로 → 청송IC <p>
② 경부고속도로 → 청주JC → 상주영덕고속도로 → 청송IC<p>

 대구에서 오시는 길 (소요시간 : 자가용 1시간대)<p>
① 경부고속도로 → 금호JC → 중앙고속도로 → 안동JC → 상주영덕고속도로 → 청송IC <p>
② 경부고속도로 → 도동JC → 대구포항고속도로 → 북영천IC → 35번국도 → 동안동IC → 청송IC<p>

 부산에서 오시는 길 (소요시간 : 자가용 2시간대)<p>
① 경부고속도로 → 금호JC → 중앙고속도로 → 안동JC → 상주영덕고속도로 → 청송IC<p>
② 경부고속도로 → 도동JC → 대구포항고속도로 → 북영천IC → 35번국도 → 동안동IC → 청송IC<p>

 광주에서 오시는 길<p>
① 광주대구고속도로 → 옥포JC → 중부내륙고속도로지선 → 금호JC → 중앙고속도로 → 안동JC → 상주영덕고속도로 → 청송IC<p>

</td>
   </tr>
   </table>
     
    </div>
    
    <div id="menu2" class="tab-pane fade">
    <hr>
      <h3 style="text-align:center;"><b>대중교통</b></h3>
<hr>
<table border="1" bordercolor="LightGray" width="750">
   <tr >
      <th>&nbsp;&nbsp;서울&nbsp;&nbsp;</th>
      <td>동서울(안동경유) ↔ 주왕산 버스터미널</td>      
   </tr>
   <tr>
      <th>부산</th>
      <td>부산(영천경유) ↔ 주왕산 버스터미널</td>      
   </tr>
   <tr>
      <th>대구</th>
      <td>
         대구(영천경유) ↔ 주왕산 버스터미널
         대구동부정류장  ↔ 부남 버스터미널 </td>      
   </tr>
   <tr>
      <th>안동</th>
      <td>안동터미널 ↔ 주왕산 버스터미널 </td>      
   </tr>
   </table > 
  <hr>
   <table  border="1" bordercolor="LightGray" width="750">
   <h3 style="text-align:center;"><b>픽업</b></h3>
  <hr>
   <tr >
      <th>주왕산 버스터미널</th>
      <td>
         13시 20분 ~ 18시 20분 (1시간 간격) <p>
          총 6회</td>      
   </tr>
   <tr>
      <th>청송 버스터미널</th>
      <td>
         13시 40분 ~ 18시 40분 (1시간 간격)<p>
          총 6회</td>      
   </tr>
   
   </table>
  
   </div>
   </div> 

   </div>
   <hr>
</body>
</html>
<%@include file="layout/footer.jspf"%>