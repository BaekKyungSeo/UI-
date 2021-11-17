<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
   String sessionId = (String) session.getAttribute("sessionId");
%>
<nav class="navbar navbar-expand" style="--mdb-bg-opacity:0.5">
   <div class="container">
      <div class="navbar-header">
         <a class="navbar-brand" href="index">Home</a>
      </div>
      <div>
         <ul class="navbar-nav mr-auto">
            <c:choose>
               <c:when test="${empty sessionId}">
                  <li class="nav-item"><a class="nav-link" href="<c:url value="list"/>">회원리스트</a></li>
                  <li class="nav-item"><a class="nav-link" href='<c:url value="writeForm"/>'>회원정보입력</a></li>
               </c:when>
            </c:choose>
         </ul>
      </div>
   </div>
</nav>