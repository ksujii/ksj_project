<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../layout/header.jspf"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<h2> 객실안내 </h2>
		
		
		
		 <div class="panel-group">
		 <c:forEach items="${roomlist}" var="room">
   			 <div class="panel panel-default">
      			<div class="panel-heading">
      				${room.roomName}
      			</div>
      			<div class="panel-body">
      				<div class="row">
      					<div class="col-sm-4">
      						<img src="https://via.placeholder.com/375/300" class="img-responsive"/>
      					</div>
      					<div class="col-sm-3">
      						<div>
		      				기준 인원 : ${room.standardNum}명<br>
		      				최대 인원 : ${room.maximumNum}명<br>
		      				넓이 : ${room.roomArea}㎥<br><!-- ㄹ+한자 -->
		      				형태 : ${room.roomForm}<br>
		      				유형 : ${room.roomType}<br>
		      				특이사항 : ${room.remarks}<br>
		      				구비시설 : ${room.facilities}<br>
		      				가격(평일) : ${room.weekDay}<br>
		      				가격(주말) : ${room.weekend}<br>
		      				</div>
		      				<p>
		      					<button class="btn btn-primary">예약하기</button>
		      				</p>
	      				</div>
      					
      				</div>      			
      			</div>
      		</div>
      	</c:forEach>
    </div>
	
	</div>
</body>
</html>
<%@include file="../layout/footer.jspf"%>