<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Date"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/table.css">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보수정</title>
<script src="<c:url value='/resources/validation.js'/>" charset="UTF-8"></script>
<style>
.jumbotron {
    width: 80%;
    hieght:500px;
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
a{text-decoration:none }
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
   <br><br><br><br><br>
<table width="900" cellpadding="0" cellspacing="0" border="1" align="center">
	<tr>
		<td align="center"><h1>동호회 회원 관리</h1></td>
	</tr>
</table>
<br>
<table width="900" cellpadding="0" cellspacing="0" border="1" align="center">
		<form action="modify" method="post">
			<input type="hidden" name="mId" value="${view.mId}">
			<tr>
				<td align="center"> 회 원 이 름 </td>
				<td>&nbsp; ${view.mName}</td>
			</tr>
			<tr>
				<td align="center"> 전 화 번 호 </td>
				
				
				<td width="700">&nbsp; <input type="text" name="mPhone1" value="${view.mPhone1}" size="10">
				&nbsp; - &nbsp;<input type="text" name="mPhone2" value="${view.mPhone2}" size="10">
				&nbsp; - &nbsp;<input type="text" name="mPhone3" value="${view.mPhone3}" size="10"></td>
			</tr>
			<tr>
				<td align="center"> 주 소 </td>
				<td>&nbsp; <input type="text" name="mAddress" value="${view.mAddress}" > </td>
			</tr>
			<tr>
				<td align="center"> 가 입 일 </td>
				<td>&nbsp; ${view.mDate}</td>
			</tr>
			<tr height="50">
				<td align="right" colspan="2"> <input type="submit" value="정보수정"> &nbsp;&nbsp; <a href="delete?mId=${view.mId}"><input type="button" value="회원삭제"></a> &nbsp;&nbsp; <a href="list"><input type="button" value="회원목록보기"></a>&nbsp;&nbsp;  </td>
			</tr>
		</form>
</table>
   <br><br><br>
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