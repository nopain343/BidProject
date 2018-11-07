<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
 	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- <link rel="stylesheet" type="text/css" href="menu.css"> -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/menu.css">
	<link href="https://fonts.googleapis.com/css?family=Cinzel" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> <!-- 아이콘 -->
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> <!-- jQuery -->
<script>
function enterkey() {
    if (window.event.keyCode == 13) {

         // 엔터키가 눌렸을 때 실행할 내용
         search();
    }
}

function search(){
	var word = $("#query").val();
	
	location.href="search.ct?word="+word;
	
}

 $(document).on('mouseover','#searchon', function(){
	$('#query').slideDown(200);
	
});

 $(document).on('mouseleave','#search', function(){
	$('#query').slideUp(200);
	
});  
</script>
</head>
<body>
	<header>
		<a href="qna.bd?pg=1"><span class="headertext">Q&A</span></a>
		
		<c:if test="${empty loginOK}">
		<a href="/BidProject/insert.go"><span class="headertext">JOIN</span></a>
		</c:if>
		
		<c:if test="${!empty loginOK}">
		<a href="/BidProject/mypage.go"><span class="headertext">MYPAGE</span></a>
		</c:if>
		
		<c:if test="${empty loginOK}">
		<a href="/BidProject/login.go"><span class="headertext">LOGIN</span></a>
		</c:if>
		
		<c:if test="${!empty loginOK}">
		<a href="/BidProject/logout.go"><span class="headertext">LOGOUT</span></a>
		</c:if>
		
		<div id="search" class="search">
				<span id="searchon" onclick="search()"><i class="fa fa-search" class="w3-xlarge"></i></span>
				<input id="query" name="query" type="text" title="검색어 입력" maxlength="255" onkeyup="enterkey();" 
				class="input_text" style="display : none; color:black;" placeholder="검색어를 입력하세요"/>
		</div>
		<span class="let">LET IT BID</span>
	
	</header>
</body>	
</html>










<%-- <%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
function enterkey() {
    if (window.event.keyCode == 13) {

         // 엔터키가 눌렸을 때 실행할 내용
         search();
    }
}

function search(){
	var word = $("#query").val();
	
	location.href="search.ct?word="+word;
	
}

$(document).on('mouseover','#searchon', function(){
	$('#query').slideDown(200);
	
});

/* $(document).on('mouseleave','#search', function(){
	$('#query').slideUp(200);
	
}); */
</script>
</head>

<body>
<header>
<div>
	<ul>
		<li id="log">
			<c:if test="${empty loginOK}">
				<a href="/BidProject/login.go" class="log">LOGIN</a>
			</c:if>
			<c:if test="${!empty loginOK}">
			  	<a href="/BidProject/logout.go" class="log">LOGOUT</a>
			</c:if>
		</li>
		<li id="mypage">
			<c:if test="${!empty loginOK}">
	      		<a href="/BidProject/mypage.go" class="mypage">MY PAGE</a>
	      	</c:if>
	   	</li>
	</ul>
	<div id="search" class="search">
		<span id="searchon" onclick="search()"><i class="fa fa-search" class="w3-xlarge"></i></span>
		<input id="query" name="query" type="text" title="검색어 입력" maxlength="255" onkeyup="enterkey();" 
		 class="input_text" style="display : none; color:black;"/>
	</div>
	

	<h1><a href="main.go?page=1" id="title">LET IT BID</a></h1>
</div>	
</header> --%>