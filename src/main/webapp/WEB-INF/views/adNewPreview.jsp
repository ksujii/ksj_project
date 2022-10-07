<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="layout/header.jspf"%>
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
			<tr>
				<td>홍길동</td>
				<td>010123456789</a></td>
				<td>room1</td>
			    <td>2명</td>
			    <td>O</td>
				<td>2022-10-01</td>
				<td>2022-10-03</td>
			</tr>
		</table>
	</form>
</div>

<h2><b>예약확인(고객)</b></h2>
	<hr>
<table>
    <thead>
    <tr>
        <th scope="cols">홍길동</th>  
        <th scope="cols">010123456789</th>   
    </tr>
    </thead>
    <tbody>
    <tr>
        <th scope="row">객실</th>
        <td>#</td>
    </tr>
    <tr>
        <th scope="row">추가인원</th>
        <td>#</td>
    </tr>
    <tr>
        <th scope="row">바베큐</th>
        <td>#</td>
    </tr>
      <tr>
        <th scope="row">체크인</th>
        <td>#</td>
    </tr>
     <tr>
        <th scope="row">체크아웃</th>
        <td>#</td>
    </tr>
    </tbody>
</table>
<hr>
		<div>
			<button class="btn btn-primary">확인</button>
      		<button class="btn btn-primary">취소</button>
		</div>
<hr>
</body>
</html>
<%@include file="layout/footer.jspf"%>