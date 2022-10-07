<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="layout/header.jspf"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약하기</title>

<style>

hr {
  background-color: White;
   border : 0;
}
table {
 	text-align:center;
}
</style>
</head>
<body>    
<div class="container">
 	<div class="col-md-6 col-md-offset-3">
    	<h2 align="center"><b>예약하기</b></h2>
    	<hr>
	    <form>
	        <table class="table table-boardered">
	            <tr>
	                <th>이름</th>
	                <td><input type="text" class="form-control"  value="김수지" disabled></td>        
	            </tr>
	            <tr>
	                <th>전화번호</th>
	                <td><input type="text" class="form-control" value="010-1234-1234" disabled></td>      
	            </tr>
	             
	            <tr>
	                <th>객 실</th>
	                <td>
		                <input type="radio" name="room"> &nbsp; room1 &nbsp;&nbsp; &nbsp;&nbsp;
		                <input type="radio" name="room"> &nbsp; room2 &nbsp;&nbsp; &nbsp;&nbsp;
		                <input type="radio" name="room"> &nbsp; room3 &nbsp;&nbsp; &nbsp;&nbsp;
		                <input type="radio" name="room"> &nbsp; room4 &nbsp;&nbsp; &nbsp;&nbsp;
					</td>       
	            </tr>
	            
	            <tr>
	                <th>추가인원</th>
	                <td>
		                <input type="radio"  name="a" value="1">&nbsp;&nbsp; 1 &nbsp;&nbsp; &nbsp;&nbsp;
		                <input type="radio"  name="a" value="2">&nbsp;&nbsp; 2 &nbsp;&nbsp; &nbsp;&nbsp;
		                <input type="radio"  name="a" value="3">&nbsp;&nbsp; 3 &nbsp;&nbsp; &nbsp;&nbsp;
		                <input type="radio"  name="a" value="4">&nbsp;&nbsp; 4 &nbsp;&nbsp; &nbsp;&nbsp;
					</td>       
	            </tr>
	            
	            <tr>
	                <th>바베큐</th>
	                <td>
		                <input type="radio"  name="b" value="o">&nbsp;&nbsp;o &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
		                <input type="radio"  name="b" value="x">&nbsp;&nbsp;x &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
					</td>       
	            </tr>
	             
	            <tr>
	                <th>체크인</th>
	                <td>
	                	<input type="date" min="2022-10-01" max="2022-12-30">
	                </td>     
	            </tr>
	             
	            <tr>
	                <th>체크아웃</th>
	                <td>
	                	<input width="200px" height="100px" type="date" min="2022-10-01" max="2022-12-30">
	                </td>     
	            </tr>                        
	             
	            <tr>
	                <td colspan="2">
	                <button class="btn btn-primary">예약하기</button>             
	                </td>
	            </tr>
	        </table>
	    </form>
    </div>
</div>
</body>
</html>
<%@include file="layout/footer.jspf"%>