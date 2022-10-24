<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../layout/header.jspf"%>
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
table {
 	text-align:center;
}
</style>
</head>
<body>    
<div class="container">
 	<div class="col-md-6 col-md-offset-3">
    	<h2 align="center"><b>회원가입</b></h2>
    	<hr>
	    <form action="${contextPath}/member/register" method="post" >
	        <table class="table table-boardered">
	            <tr>
	                <th>이름</th>
	                <td><input type="text" class="form-control"  id="memberName" name="memberName"></td>        
	            </tr>
	            
	            <tr>
	                <th>아이디</th>
	                <td><input type="text" class="form-control"  id="memberId" name="memberId"></td>        
	            </tr>
	            
	            <tr>
	                <th>비밀번호</th>
	                <td><input type="password" class="form-control"   name="password"></td>        
	            </tr>
	            <tr>
	                <th>비밀번호확인</th>
	                <td><input type="password" class="form-control"   name="password2"></td>        
	            </tr>
	            
	            <tr>
	                <th>전화번호</th>
	                <td><input type="text" class="form-control" name="phoneNumber" placeholder="- 빼고 입력해주세요"></td>      
	            </tr>
	             
	            <tr>
	                <th>이메일</th>
	                <td><input type="email" class="form-control" name="email"></td>        
	            </tr>            
	           
	            <tr>
	                <td colspan="2">
	                <button class="btn btn-primary register" >회원가입</button>             
	                </td>
	            </tr>
	        </table>
	    </form>
    </div>
</div>

</body>
</html>


<%@include file="../layout/footer.jspf"%>