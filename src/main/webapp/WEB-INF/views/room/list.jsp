<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../layout/header.jspf"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
     width: 100%;
     height: 375px;
     text-align: center;
}
hr {
  background-color: White;
   border : 0;
}
div{
   text-align: center;
  
}

</style>
</head>
<body>
	<div class="container">
		<h2><b>객실안내</b> </h2>
		<hr>
		 <div class="panel-group">
		 <c:forEach items="${roomlist}" var="room">
   			 <div class="panel panel-default">
      			<div class="panel-heading">
      				${room.roomName}
      			</div>
           <hr>
      			<div class="panel-body">
      				<div class="row">
      					<div class="col-sm-6">
      						<img src="https://via.placeholder.com/375/300" class="img-responsive"/>
      					</div>
      					<div class="col-sm-6">
      						<div>
		      				 	<table class="table table-boardered">
                      <tr>
                        <th>
                          <ui><li>기준 인원</li></ui>
                         </th>
                        <td>${room.standardNum}명</td>
                      </tr>

                      <tr>
                        <th><ui><li>최대 인원</li></ui></th>
                        <td> ${room.maximumNum}명</td>
                      </tr>

                      <tr>
                        <th><ui><li>넓이</li></ui></th>
                        <td> ${room.roomArea}평형</td>
                      </tr>

                      <tr>
                        <th><ui><li>형태</li></ui></th>
                        <td>${room.roomForm}룸</td>
                      </tr>

                      <tr>
                        <th><ui><li>유형</li></ui></th>
                        <td>${room.roomType}형</td>
                      </tr>

                      <tr>
                        <th><ui><li>특이사항</li></ui></th>
                        <td>${room.remarks}</td>
                      </tr>

                      <tr>
                        <th><ui><li>구비시설</li></ui></th>
                        <td style="text-overflow:clip;">${room.facilities}</td>
                      </tr>

                      <tr>
                        <th nowrap><ui><li>가격(평일)</li></ui></th>
                        <td> ${room.weekDay}원</td>
                      </tr>

                      <tr>
                        <th><ui><li>가격(주말)</li></ui></th>
                        <td> ${room.weekend}원</td>
                      </tr>
                  </table>
		      				</div>
		      				<hr>
		      					<button class="btn btn-primary">예약하기</button>
		      				
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