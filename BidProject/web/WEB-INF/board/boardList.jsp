<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="styleBoard.css">
<script>
function checkLogin(id,seq,pg){
	if(id=='null') 
		alert("먼저 로그인하세요");
	else
		location.href="/bbs/board/boardView.jsp?seq="+seq+"&pg="+pg;
	
}
</script>
</head>
<body>
<%-- <table>
	<tr>
		<td colspan="5" bgcolor="777777"></td>
	</tr>
	<tr>
		<th width="100">글번호</th>
		<th width="300">제목</th>
		<th width="100">작성자</th>
		<th width="100">조회수</th>
		<th width="100">작성일</th>
	</tr>
	<tr>
		<td colspan="5" bgcolor="777777"></td>
	</tr>
	<%for(BoardDTO boardDto : list){ %>
	<tr>
		<td align="center"><%=boardDto.getSeq() %></td>
		<td>
		<% for(int i=0; i<boardDto.getLev(); i++){ %>
			&nbsp;
		<%} %>
		
		<%if(boardDto.getPseq()!=0){ %>
			<img src="/bbs/image/reply.gif">
		<%} %>
		
	
		</td>
		<td align="center"><%=boardDto.getId() %></td>
		<td align="center"><%=boardDto.getHit() %></td>
		<td align="center"><%=boardDto.getLogtime() %></td>
	</tr>
	<tr>
		<td colspan="5" bgcolor="cccccc"></td>
	</tr>
	<%}//for %>
	<tr>
		<td colspan="5" bgcolor="777777"></td>
	</tr>
	<tr>
		<td colspan="5" align="center"><%=paging.getPagingHTML() %></td>
	</tr>
</table> --%>
</body>
</html>











