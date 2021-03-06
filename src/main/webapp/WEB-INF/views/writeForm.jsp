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
<title>회원정보입력</title>
<script type="text/javascript">
   function check() {
      if (fr.sName.value.length==0) {
         alert("이름을 입력해 주세요.");
         fr.sName.focus();
         return false;
      }
      else if (fr.sPhone.value.length==0) {
         alert("번호를 입력해 주세요.");
         fr.sPhone.focus();
         return false;
      }else if(fr.sAddr.value.length==0){
         alert("주소를 입력해주세요.")
         fr.sAddr.focus();
         return false;
      }
      else
          return true;
   }
</script>
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
input[type=button]{width: 80pt; height: 20pt; font-size:10pt;}
input[type=submit]{width: 80pt; height: 20pt; font-size:10pt;}
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
		<td><h1><center>동호회 회원 관리</center></h1></td>
	</tr>
</table>
<br>
<table width="900" cellpadding="0" cellspacing="0" border="1" align="center">
		<form action="write" method="post"  onsubmit="return check()">
			<tr>
				<td align="center"> 회 원 이 름 </td>
				<td>&nbsp; <input type="text" name="mName" > </td>
			</tr>
			<tr>
				<td align="center"> 전 화 번 호 </td>
				<td>&nbsp;&nbsp;<select name="mPhone1">
					<option value="010" selected="selected">010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="019">019</option>
				</select>
				&nbsp;- &nbsp;<input type="text" name="mPhone2">&nbsp; - &nbsp; <input type="text" name="mPhone3">
			</tr>
			<tr>
				<td align="center"> 주 소 </td>
				<td>&nbsp; <input type="text" name="mAddress" > </td>
			</tr>
			<tr height="50">
				<td colspan="2" align="right"> <input type="button" value="회원목록보기" onclick="location.href='list'"> &nbsp;&nbsp; <input type="submit" value="회원입력완료" >&nbsp;&nbsp; </td>
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