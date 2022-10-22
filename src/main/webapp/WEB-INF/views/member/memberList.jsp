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
table {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    text-align: center;
    margin: auto;

}
table thead th {
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #616161;
    border-bottom: 3px solid #036;
    background: #f0f0f0;
    text-align: center;
}
table tbody th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background: #f0f0f0;
}
table td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
}
</style> 

</head>
<body>
 <div class="container">
	<h2><b>회원관리</b></h2>
	<hr>
<form>
		<table class="table table-hover">
			<tr class="active">
				<th>이름</th>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>전화번호</th>
				<th>이메일</th>
        		<th>가입시간</th>
       			<th>수정시간</th>
			</tr>
		 <c:forEach items="${memberList}" var="m">
			<tr>
				<td>${m.memberName}</td>
				<td>${m.memberId}</td>
				<td>${m.password}</td>
				<td>${m.phoneNumber}</td>
			    <td>${m.email}</td>  
				<td><fmt:formatDate value="${m.regDate}" pattern="yyyy-MM-dd" /></td>
				<td><fmt:formatDate value="${m.updateDate}" pattern="yyyy-MM-dd" /></td>
			</tr>
			</c:forEach> 
		</table>
	</form>
</div> 
</body>
</html>
<%@include file="../layout/footer.jspf"%>