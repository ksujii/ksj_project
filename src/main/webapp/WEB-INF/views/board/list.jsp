<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../layout/header.jspf"%>

<style>
table {
	margin: auto;
}

th, td {
	text-align: center;
}

body {
	text-align: center;
}

hr {
	background-color: White;
	border: 0;
}
.on{
 font-weight:  700;
 
}

</style>
<div class="container">
	
	<h2>
		<b class="board_name">공지사항</b>	
	</h2>
	<hr>
	<form action="${contextPath}/board/list" id="listForm">
		<div>
			<select name="type">
				<option value="">===</option>
				<option value="T" ${pageMarker.criteria.type eq 'T' ? 'selected':''}>제목</option>
				<option value="C" ${pageMarker.criteria.type eq 'C' ? 'selected':''}>내용</option>
				<option value="W" ${pageMarker.criteria.type eq 'W' ? 'selected':''}>작성자</option>
			</select>
			<input type="text" name="keyword" value="${pageMarker.criteria.keyword}">
			<input type="hidden" name="category" value="${pageMarker.criteria.category}">
			<button>검색</button>
		</div>
	</form>
	<form id="getForm">
		<table class="table table-hover">
			<tr class="active">
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>등록일</th>
				<th>수정일</th>
			</tr>
			<c:if test="${empty list}">
				<tr>
					<td colspan="5">데이터가 존재하지 않습니다.</td>
				</tr>
			</c:if>
			<c:if test="${not empty list}">
				<c:forEach items="${list}" var="b">
				
					<tr>
						<td>${b.bno }</td>
						<td><a href="get?bno=${b.bno}"> ${b.title } </a></td> 
						<td>${b.writer }</td>
						<td><fmt:formatDate value="${b.regDate}" pattern="yyyy-MM-dd" />
						</td>
						<td><fmt:formatDate value="${b.updateDate}"
								pattern="yyyy-MM-dd" /></td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
		<div class="d-flex justify-content-end">
			<button class="btn btn-primary register" style="float: right;">글쓰기</button>
		</div>
	</form>
</div>
<div class="pagination">
		<c:if test="${pageMarker.prev }">
			<a href="${pageMarker.startPage - 1}">[이전페이지]</a>
		</c:if>
		<c:forEach begin="${pageMarker.startPage }" end="${pageMarker.endPage }" var="pageNum">
			<a href="${pageNum}" class="${pageMarker.criteria.page == pageNum ? 'on':''}">[${pageNum}]</a>	
		</c:forEach>
		<c:if test="${pageMarker.next}">
			<a href="${pageMarker.endPage +1 }">[다음페이지]</a>
		</c:if>
	</div>
	<div class="listData">
		<input type="hidden" name="page" id="page" value="${pageMarker.criteria.page}">
		
	</div>
<script>

 	$(function() {
 		let boardName=['공지사항','이용후기']; //배열
 		let category ="${pageMarker.criteria.category}"; 
 		if(category=='notice') {
 			$('.board_name').html(boardName[0])	//공지사항
 		}else if(category=='review'){
 			$('.board_name').html(boardName[1])	//이용후기
 		}
 		
		let listForm = $("#listForm");
	    $('.pagination a').on('click',function(e){
			e.preventDefault();
			$('.listData').find('#page').val($(this).attr('href'));
			listForm.append($('#page'));
			listForm.submit();
	    }) 
		
		 let getForm = $("#getForm");
		$('#getForm .register').on('click', function() {
			getForm.attr("action", "register");
			getForm.append($('#category'));
			getForm.submit();
		}) 
		
	})
</script>
<hr>
<%@include file="../layout/footer.jspf"%>
