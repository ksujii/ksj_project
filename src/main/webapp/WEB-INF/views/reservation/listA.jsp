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
<hr>
<div class="container">
	<h2><b>예약확인(관리자)</b></h2>
	<hr>
<form>
		<table class="table table-hover">
			<tr class="active">
				<th>이름</th>
				<th>전화번호</th>
				<th>객실</th>
				<th>추가인원</th>
				<th>바베큐</th>
        		<th>체크인</th>
       			 <th>체크아웃</th>
			</tr>
			<c:forEach items="${reservationList}" var="r">
			<tr>
				<td>${r.memberName}</td>
				<td>${r.phoneNumber}</td>
				<td>${r.roomName}</td>
			    <td>${r.addPerson}명</td>
			    <td>${r.babekyu?'O':'X'}</td>
				<td>${r.checkIn}</td>
				<td>${r.checkOut}</td>
			</tr>
			</c:forEach>
		</table>
	</form>
</div>
<hr>
</body>
</html>
<%@include file="../layout/footer.jspf"%>