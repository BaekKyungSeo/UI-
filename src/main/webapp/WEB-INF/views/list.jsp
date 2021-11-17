<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Date"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/table.css">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원리스트</title>
<style>
.jumbotron {
	width: 80%;
	hieght: 500px;
	margin: 0 auto;
	margin-top: 30px;
	display: flex;
	background-color: lightpink;
	color: white;
	text-shadow: 2px 2px 4px #C71585;
}

.container1 {
	width: 70%;
	margin: 0 auto;
	color: pink;
	text-shadow: 0px 1px 0px #C71585;
}

a {
	text-decoration: none
}
</style>
</head>
<body>
   <%@ include file="header.jsp"%>
	<%!String greeting = "동호회 회원 관리";
	String tagline = "Welcome Member System";%>


	<div class="jumbotron">
		<div class="container">
			<h1 class="vanner" align="center">
				<%=greeting%>
			</h1>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<table width="900" cellpadding="0" cellspacing="0" border="1"
		align="center">
		<tr>
			<td><h1>
					<center>동호회 회원 관리</center>
				</h1></td>
		</tr>
	</table>
	<br>

	<table width="900" cellpadding="0" cellspacing="0" border="1"
		align="center">


		<tr align="center">
			<td>번호</td>
			<td>회원이름</td>
			<td>전화번호</td>
			<td>주소</td>
			<td>가입일</td>
		<tr>


			<c:forEach items="${list}" var="dto">
				<tr>
					<td align="center">${dto.mId}</td>
					<td align="center"><a href="view?mId=${dto.mId}">${dto.mName}</a></td>
					<td align="center">${dto.mPhone1}&nbsp;-
						&nbsp;${dto.mPhone2}&nbsp; - &nbsp;${dto.mPhone3}</td>
					<td>&nbsp; ${dto.mAddress}</td>
					<td align="center">${dto.mDate}</td>
				<tr>
			</c:forEach>
		<tr>
			<td height="50" colspan="2" align="center"><c:set var="mCnt"
					value="0" /> <c:set var="mCnt" value="0" /> <c:forEach
					items="${list }" var="list">
					<c:set var="mCnt" value="${mCnt+1}" />
				</c:forEach> 총인원수 : ${dto.mTotal}<c:out value="${mCnt }" /></td>
			<td height="50" colspan="3" align="right">
				<form action="writeForm" method="post">
					<input type="submit" value="회원정보입력">&nbsp;&nbsp;
				</form>
			</td>
		</tr>
	</table>
	<br>
	<br>
	<br>
	<div class="container1">
		<div class="text-center">
			<h3 class="tg">
				<%=tagline%>
			</h3>
			<%
			response.setIntHeader("RefreshW", 5);
			Date day = new java.util.Date();
			String am_pm;
			int hour = day.getHours();
			int minute = day.getMinutes();
			int second = day.getSeconds();
			if (hour / 12 == 0) {
				am_pm = "AM";
			} else {
				am_pm = "PM";
				hour = hour - 12;
			}
			String CT = hour + ":" + minute + ":" + second + " " + am_pm;
			out.println("현재 접속  시각: " + CT + "\n");
			%>
		</div>
		<hr>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>