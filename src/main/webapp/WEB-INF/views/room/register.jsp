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
 	text-align:center;
}
hr {
  background-color: White;
   border : 0;
}
body {
 	text-align:center;
}
</style>
</head>
<body>
 <div class="container">
 	<div class="col-md-6 col-md-offset-3">
    	<h2 align="center"><b>객실등록</b></h2>
    	<hr>
	    <form action='<c:url value="/room/register"/>' method="post">
	        <table class="table table-boardered">
	        	<tr>
	                <th>객실명</th>
	                <td><input type="text" name="roomName" class="form-control"></td>        
	            </tr>
				
	            <tr>
	                <th>기준인원</th>
	                <td><input type="number" name="standardNum" min="1" max="8" class="form-control"></td>        
	                
	            </tr>
	            <tr>
	                <th>최대인원</th>
	                <td><input type="number" name="maximumNum"  min="1" max="12" class="form-control"></td>      
	            </tr>
	             
	            <tr>
	                <th>넓 이</th>
	                <td><input type="number"  name="roomArea" min="200" max="1000"class="form-control"></td>        
	            </tr>
	             
	            <tr>
	                <th>형 태</th>
	                <td>
		                <select class="form-control" name="roomForm" >
							<option value="">====선택====</option>	                
		                	<option value="복층">복층</option>
		                	<option value="원룸">원룸</option>
		                	<option value="독채">독채</option>
		                </select>
	                </td>       
	            </tr>
	             
	            <tr>
	                <th>유 형</th>
	                <td>
		                <select class="form-control" name="roomType" >
							<option value="">====선택====</option>	                
		                	<option value="커플">커플</option>
		                	<option value="가족">가족</option>
		                	<option value="친구">친구</option>
		                </select>
	                </td>       
	            </tr>
	             
	            <tr>
	                <th>특이사항</th>
	                <td>
	                <textarea name="remarks" rows="5" cols="40" class="form-control"></textarea>
	                </td>     
	            </tr>
	             
	            <tr>
	                <th>구비시설</th>
	                <td>
	                 <textarea name="facilities" rows="5" cols="40" class="form-control"></textarea>
	                </td>     
	            </tr>
	                                      
	            <tr>
	                <th>주 중</th>
	                <td><input type="tel" name="weekDay" class="form-control"></td>       
	            </tr>
	            
	            <tr>
	                <th>주 말</th>
	                <td><input type="tel" name="weekend" class="form-control"></td>       
	            </tr> 
	            <tr>
	                <th>객실이미지</th>
	                <td><input type="file" class="form-control"></td>        
	            </tr>                        
	             
	            <tr>
	                <td colspan="2">
	                	<button class="btn btn-primary">등록하기</button>             
	                </td>
	            </tr>
	        </table>
	    </form>
    </div><!--  -->
</div>

 
<hr>
<div class="container">
	<div class="col-md-6 col-md-offset-3">
   <h2 align="center"><b>예약확인</b></h2><p>
    <hr>
		<form>
			<div class="form-group">
				<input type="text"  placeholder="이름" class="form-control">
			</div>
			<div class="form-group">
				<input type="text" placeholder="전화번호" class="form-control">
			</div><hr>
			<div class="form-group">
				<button class="btn btn-primary">확인하기</button>
			</div>
		
		</form>
	</div>
</div>
<hr><hr>
<%@include file="../layout/footer.jspf"%>

<script>
let message="${message}";
if(message!=''){
	alert(message)	
}

</script>