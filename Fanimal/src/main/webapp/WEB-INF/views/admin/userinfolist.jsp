<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userinfolist</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>
		body {
	margin-bottom: 100px;
}

body, div, h1, th, td {
	color: #444;
}

#main {
	height: 100%;
	margin: 0 auto;
}

#main h1 {
	padding-top: 30px;
	align-content: center;
	text-align: center;
	margin: 0;
	padding-bottom: 20px;
	/* padding-bottom: 5px; */
	margin-bottom: 5px;
}


#list1 {
	border: 1px solid #ccc;
	background-color: #fff9e0;
	border-collapse: collapse;
	border-left: 0px;
	border-right: 0px;
	width: 1200px;
	max-width: 100%;
	margin-bottom: 20px;
	margin-left:auto; 
    margin-right:auto;
    padding-left :10px;
    padding-right :10px;
}

#list1 th, #list1 td {
	border: 1px solid #ccc;
	border-left: 0px;
	border-right: 0px;
	padding: 5px;
	font-size: 18px;
}

#list1 tr {
	background-color: white;
}
#list1 .col1 {
	width: 188px;
	text-align: center;
}

#list1 .col2 {
	width: 188px;
	text-align: center;
}

#list1 .col3 {
	width: 188px;
	text-align: center;
}

#list1 .col4 {
	width: 188px;
	text-align: center;
}

#list1 .col5 {
	width: 188px;
	text-align: center;
}

#list1 td {
	text-align: center;
}

#list1 th {
	background-color: #faca69;
}

#list1 tr:hover {
	background-color: #fff8e3;
}
	</style>
</head>
<body>
	<main>
	<%@ include file ="/WEB-INF/views/inc/adminheader.jsp" %>
	<section id="main">
	
		<h1>회원 정보 조회</h1>
		<table id="list1">
			<tr>
				<th class="col1">번호</th>
				<th class="col1">아이디</th>
				<th class="col2">이름</th>
				<th class="col3">전화번호</th>
				<th class="col4">주소</th>
				<th class="col5">가입날짜</th>
			</tr>
			<c:forEach items="${list}" var="dto">
			<tr>
				<td class="cell1">${dto.useq}</td>
				<td class="cell1">${dto.id}</td>
				<td class="cell2">${dto.name}</td>
				<td class="cell3">${dto.tel}</td>
				<td class="cell4">${dto.address}</td>
				<td class="cell5">${dto.joindate}</td>
			</tr>
			</c:forEach>
		</table>
		</section>
	</main>
	<script>
		
	</script>

</body>
</html>











