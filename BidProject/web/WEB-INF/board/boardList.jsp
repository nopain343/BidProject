<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.board.dto.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<% 
	int total= ((List<BoardDTO>)request.getAttribute("list")).get(0).getTotal();
	int pg = ((List<BoardDTO>)request.getAttribute("list")).get(0).getPg();
	BoardPaging paging = new BoardPaging();
	
	paging.makePagingHTML(total,pg);
	
%>




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> 
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/boardList.css">
<title>Insert title here</title>
<script>

  function checkLogin(seq,pg){
	
	location.href="boardview.bd?seq="+seq+"&pg="+pg;
   /*  console.log(location.href); */
}  

   
</script>
</head>
<body>
<div class="container">
<table class="table table-striped">

	<thead>
	<tr>
		<th>글번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>조회수</th>
		<th>작성일</th>
	</tr>
	</thead>'

	<c:if test="${!empty list}">
		<c:forEach items="${list}"  var="ob">
			<tr>
				<td>${ob.seq}</td>
				<td>
				<c:forEach begin="0" end="${ob.lev }" step="1">
				&nbsp;
				</c:forEach>
				<c:if test="${ob.pseq != 0}">
				<img src = "resources/image/reply.gif">
				</c:if>
				<a href="javascript:checkLogin(${ob.seq},'${list.get(0).pg}')">${ob.subject}</a></td>
				<td>${ob.username}</td>
				<td>${ob.hit}</td>
				<td>${ob.logtime}</td>
			</tr>
		</c:forEach>
	</c:if>
	<c:if test="${empty list}">
		<tr><th>내용이 없습니다.</th></tr>
	</c:if>
	

	<%-- <tr>
		 <td colspan="5" align="center"><%=paging.getPagingHTML() %></td>
	</tr> --%>
	
	<%-- <div class="center-block">
		<ul class="pagination">
	<li class="page-item"><a class="page-link" href="#"><%=paging.getPagingHTML() %></a></li>
		</ul>
	</div> --%>
	
	



</table><br><br>

	<!-- Paging 처리, Bootstrap -->
<%-- <nav aria-label="..." style="text-align:center">
  <ul class="pagination">
    <%=paging.getPagingHTML() %>
  </ul>
</nav> --%>

<!-- <a href="write.bd"><button id="write">글쓰기</button></a>
<a href="main.go?page=1"><button id="main">MAIN</button></a> -->
<div class="row justify-content-end">
<div class="float-left"><a href="write.bd" class="btn btn-primary">글쓰기</a></div>
<div class="col-md-offset-3"><a href="main.go?page=1" class="btn btn-outline-primary">MAIN</a></div>
</div>

</div>
</body>
</html>











