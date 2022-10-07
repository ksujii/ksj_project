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
<hr><hr>
<div class= "container">
<form action="modify" method="post" id="modifyForm">
	<input type="hidden" name="bno" value="${board.bno}">
	<input type="hidden" name="writer" value="${board.writer}">
<table class="table table-striped table-bordered">
	<tr>
		<th>게시물 번호</th>                                     
		<td>${board.bno}</td>
	</tr>
	<tr>
		<th>제목</th>                                     
		<td><input type="text" class="form-control" name="title" value="${board.title}"></td>
	</tr>
	<tr>
		<th>내용</th>                                     
		<td><textarea rows="10" class="form-control" name="content">${board.content}</textarea></td>
	</tr>
    <tr>
		<th>작성자</th>                                    
		<td>${board.writer}</td>
	</tr>
</table>
<div class="d-flex justify-content-end">
<button class="btn btn-primary" style="float:right;">수정하기</button>
</div>
</form>
</div>
<hr>
<%@include file="../layout/footer.jspf"%>
