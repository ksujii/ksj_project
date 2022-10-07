<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../layout/header.jspf"%>
  <style>
  table {
    margin:auto; 
}
th{
  text-align: center;
}
button {
  text-align: center;
}
hr {
  background-color: White;
   border : 0;
}
button {background-color: #555555;}
</style>

<div class= "container">
<hr>
<hr>
<hr>
	<form id="getForm">	
		<input type="hidden" name="bno" value="${board.bno}">
		  <table class="table">
        <tr>
            <th class="active">제목</th>
            <td colspan="3">${board.title }</td>
        </tr>
           
         
        <tr>
            <th class="active">작성자</th>
            <td colspan="3">${board.writer }</td>
          
        </tr>
         
        <tr>
            <th class="active">글 내용</th>
            <td colspan="3">${board.content}</td>
        </tr>
         
          <tr>
            <th class="active">등록일</th>
            <td><fmt:formatDate value="${board.regDate}" pattern="yyyy년MM월dd일 HH시mm분"/></td>
            <th class="active">수정일</th>
            <td><fmt:formatDate value="${board.updateDate}" pattern="yyyy년MM월dd일 HH시mm분"/></td>
        </tr>
  
        </table>
	
				
			<button class="btn btn-warning modify" style="float:right;">수정</button>
			<button class="btn btn-danger remove" style="float:right;">삭제</button>		
			<button class="btn btn-primary list" style="float:right;">목록</button>

	</form>
</div>

<script>
$(function(){	
	let getForm = $("#getForm");
	$('#getForm .list').on('click',function(){ // 목록페이지
		getForm.attr("action","list");
		getForm.submit();	
	})
	$('#getForm .modify').on('click',function(){ // 수정페이지
		getForm.attr("method","get");
		getForm.attr("action","modify");
		getForm.submit();	
	})
	$('#getForm .remove').on('click',function(){ // 삭제처리
		getForm.attr("method","post");
		getForm.attr("action","remove");
		getForm.submit();
	})
	
	let bno = $('input[name="bno"]').val();
	
})
</script>
<hr>
<hr>
<hr>
<%@include file="../layout/footer.jspf"%>
