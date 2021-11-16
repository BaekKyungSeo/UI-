<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="EUC-KR">
<title>회원관리프로그램</title>
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
#nav1{background:#FFC0CB; border-radius:15px; width:500px; height:100px; text-shadow: 2px 2px 4px #C71585; text-align:center; line-height:100px;}
#nav2{background:#DDA0DD; border-radius:15px; width:500px; height:100px; text-shadow: 2px 2px 4px #9966CC; text-align:center; line-height:100px;}
</style>
</head>
<body>
   <%@ include file="menu.jsp"%>
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
   
   <div class="container" align="center">
        <div id="nav1"><a href = "writeForm" style="color:white">## 회원정보입력 ##</a></div><br><br>
        <div id="nav2"><a href = "list" style="color:white">## 회원리스트보기 ##</a></div><br><br>
   </div>
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