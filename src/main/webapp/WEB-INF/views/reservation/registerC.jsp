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
<hr>
<div class="container">
	<div class="col-md-6 col-md-offset-3">
   <h2 align="center"><b>예약확인</b></h2><p>
    <hr>
		<form>
		<table class="table table-boardered">
	        	<tr>
	                <th>이름</th>
	                <td><input type="text" name="roomName" class="form-control"></td>        
	            </tr>
				
	            <tr>
	                <th>전화번호</th>
	                <td><input type="text" name="standardNum" class="form-control"></td>        
	                
	            </tr>
	            </table>
	            <div class="form-group">
				<button class="btn btn-primary listC">확인하기</button>
			</div>
		</form>
	</div>
</div>
<hr>
</body>
</html>

<%@include file="../layout/footer.jspf"%>