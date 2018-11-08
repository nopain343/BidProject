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
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> 
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script> -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/boardList.css">
<title>Insert title here</title>
<script>

  function boardView(seq,pg){
	
	location.href="boardview.bd?seq="+seq+"&pg="+pg;
}  

   
</script>
</head>
<body>
<jsp:include page="/menu.jsp" flush="true" />
<div class="backimg"></div>
<jsp:include page="/Categorybar.jsp" flush="true" />

<div class="container">
<h1 class="qna">Q&A</h1>

<table class="tb">

	<thead class="tbhead">
	<tr>
		<th>글번호</th>
		<th class="tt">제목</th>
		<th>작성자</th>
		<th>조회수</th>
		<th>작성일</th>
	</tr>
	</thead>

	<c:if test="${!empty list}">
		<c:forEach items="${list}"  var="ob">
			<tr>
				<td class="seq">${ob.seq}</td>
				<td class="sub">
				<c:forEach begin="0" end="${ob.lev }" step="1">
				&nbsp;
				</c:forEach>
				<c:if test="${ob.pseq != 0}">
				<img src = "resources/image/reply.gif">
				</c:if>
				<a href="javascript:boardView(${ob.seq},'${list.get(0).pg}')">${ob.subject}</a></td>
				<td class="name">${ob.username}</td>
				<td class="hit">${ob.hit}</td>
				<td>${ob.logtime}</td>
			</tr>
		</c:forEach>
	</c:if>
	<c:if test="${empty list}">
		<tr><th>내용이 없습니다.</th></tr>
	</c:if>
	

	
	

</table><br>


<span class="pg" align="center" bgcolor="white"><%=paging.getPagingHTML() %></span>

		
		
<ul class="pagination">

</ul>
    
    



<div class="row justify-content-end">
<c:if test="${!empty loginOK.id }">
<a href="write.bd"><button id="writebtn" class="btn">글쓰기</button></a>
</c:if>
<a href="main.go?page=1"><button id="mainbtn" class="btn">MAIN</button></a>
</div>

</div>
</body>
</html>











