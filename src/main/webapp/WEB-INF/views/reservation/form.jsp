<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../layout/header.jspf"%>
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
	    <form action="${contextPath}/reserve" method="post">
	        <table class="table table-boardered">
	            <tr>
	                <th>이름</th>
	                <td><input type="text" class="form-control"  value="김수지" name="memberName"></td>        
	            </tr>
	            <tr>
	                <th>전화번호</th>
	                <td><input type="text" class="form-control" value="010-1234-1234" name="phoneNumber"></td>      
	            </tr>
	             
	            <tr>
	                <th>객 실</th>
	                <td>
	                	<c:if test="${param.rno!=null and param.rno!=''}">
	                		<input class="form-control" readonly="readonly" value="${room.roomName}">
	                	
	                	</c:if>
	                	<c:if test="${param.rno==null || param.rno==''}">
			                <select class="form-control" name="roomName" >
			                <option>====선택하세요====</option>
		                <c:forEach items="${roomNames}" var="r">
		                	<option value="${r.roomName}" ${param.rno == r.rno?'selectes':''}>${r.roomName}</option>
		                </c:forEach>
		                </select>
		                </c:if>
					</td>       
	            </tr>
	            
	            <tr>
	                <th>추가인원</th>
	                <td>
		                <select class="form-control" name="addPerson">
		                		<option>====선택하세요====</option>
		                	<c:forEach begin="0" end="6" var="num"> 		                		
								<option>${num}</option>	                
		                	</c:forEach>
		                </select>
					</td>       
	            </tr>
	            
	            <tr>
	                <th>바베큐</th>
	                <td>
	                 	<select class="form-control" name="babekyu">
	                 	    <option>====선택하세요====</option>
							<option value="0">O</option>	                
		                	<option value="1">X</option>
		                </select>
					</td>       
	            </tr>
	             
	            <tr>
	                <th>체크인</th>
	                <td>
	                	<input type="date" min="2022-10-01" max="2022-12-30" class="form-control" name="checkIn">
	                </td>     
	            </tr>
	             
	            <tr>
	                <th>체크아웃</th>
	                <td>
	                	<input type="date" min="2022-10-01" max="2022-12-30" class="form-control" name="checkOut">
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
<%@include file="../layout/footer.jspf"%>