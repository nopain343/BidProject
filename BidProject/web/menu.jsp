<%@ page language="java" contentType="text/html; charset=EUC-KR"
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

         // ����Ű�� ������ �� ������ ����
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
		<input id="query" name="query" type="text" title="�˻��� �Է�" maxlength="255" onkeyup="enterkey();" 
		 class="input_text" style="display : none; color:black;"/>
	</div>
	

	<h1><a href="main.go?page=1" id="title">LET IT BID</a></h1>
</div>	
</header>