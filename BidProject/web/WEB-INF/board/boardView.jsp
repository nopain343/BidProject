<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

/* int seq = Integer.parseInt(request.getParameter("seq"));
int pg = Integer.parseInt(request.getParameter("pg")); */
BoardDAO.updateHit(seq);
BoardDTO boardDto = BoardDAO.getBoard(seq);
</script>
</head>
<body>
<table width="500">
<tr>
	<td colspan="3" bgcolor="777777"></td>
</tr>

<tr>
	<td colspan="3"><font size="5">{ob.subject}</font></td>
</tr>

<tr>
	<td colspan="3" bgcolor="777777"></td>
</tr>
<tr>
	<td width="150">글번호 : BoardDTO.getSeq()</td>
	<td width="200">작성자 : <%=BoardDTO.getId() %></td>
	<td width="150">조회수 : <%=BoardDTO.getHit() %></td>
</tr>
<tr>
	<td colspan="3" bgcolor="777777"></td>
</tr>

<tr>
	<td colspan="3" height="200" valign="top"><pre><%=boardDto.getContent() %></pre></td>
</tr>

<tr>
	<td colspan="3" bgcolor="777777"></td>
</tr>
</table>





</body>
</html>