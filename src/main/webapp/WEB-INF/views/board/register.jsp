<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../layout/header.jspf"%>
<style>

th, td {
  text-align : center;
  vertical-align : middle;
}
table {
    margin:auto; 
}
hr {
  background-color: White;
   border : 0;
}
</style>
<hr>
<div class="container">
<form action="register" method="post" id="registerForm">
<table class="table table-striped table-bordered">
	<tr>
		<th>제목</th>                                     
		<td><input type="text" class="form-control" name="title"></td>
	</tr>
	<tr>
		<th>내용</th>                                     
		<td><textarea rows="10" class="form-control" name="content"></textarea></td>
	</tr>
    <tr>
		<th>작성자</th>                                    
		<td><input type="text" class="form-control" name="writer"></td>
	</tr>
</table>

<button class="btn btn-primary" style="float:right;">글쓰기</button>
</form>
</div>
<%@include file="../layout/footer.jspf"%>

