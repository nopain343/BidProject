<%@page import="com.user.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link href="https://fonts.googleapis.com/css?family=Cinzel" rel="stylesheet">
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">

		
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Let It Bid</title>
<script src=jquery-3.3.1.min.js></script>
<script>
$(document).ready(function(){
	$('#category').click(function(){
		$.ajax({
	        url : "category.ct",
	        type: "get",
	        data : { "cat1" : "HH" },
	        error : function(request,status,error){
	            alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	        	},
	        success : function(responseData){
	        	console.log(responseData);
	        	var total = "<section class=wrap0>";
	        	var box1 = "<section class='product1'><div class='photo'></div><section class='wrap01'><section class='wrap1'><div class='prodname'><a href='/BidProject/auction.au'>";
				var box2 = "</a><br></div><div class='wrap2'><div class='ref'>";
				var box3 = "<br></div><div class='price'>";
				var box4 = "<br></div>[현재가격]<br><div class='term'>"
				var last = "</div></div></section></section></section>"
	        	$.each(responseData, function(index, entry){
					total += box1 + entry.prodname + box2 + entry.ref + box3 + entry.price + box4 + entry.term + last;
			});
				console.log(total);
				$('#update').html(total+"</section>");
	        	
	
	        	
	        	
	        	
	        	
	        }
	    });
		
		
	
	});
});
</script>


</head>
<body>
<header>
	<div id="search" class="search">
		<i class="fa fa-search" class="w3-xlarge"></i>
		<input id="query" name="query" type="text" title="검색어 입력" maxlength="255" class="input_text"/>
	</div>

	<c:if test="${empty loginOK}">
		로그인해주세요
	</c:if>
	<c:if test="${!empty loginOK}">
		${loginOK.id }님이 로그인하셨습니다.
	</c:if>
   <br>

	<h1>LET IT BID</h1>
	
	<ul>
		<li id="log">
			<c:if test="${empty loginOK}">
				<h2><a href="/BidProject/login.go" class="log">LOGIN</a></h2>
			</c:if>
			<c:if test="${!empty loginOK}">
			  	<h2><a href="/BidProject/logout.go" class="log">LOGOUT</a></h2>
			</c:if>
		</li>
	
		<li id="mypage">
			<c:if test="${!empty loginOK}">
	      		<h2><a href="/BidProject/mypage.go" class="mypage">MY PAGE</a></h2>
	      	</c:if>
	   	</li>
	</ul>
</header>

<section id="main" class="main">
	<div>
		<h1>BID YOUR ITEMS</h1>
	</div>
</section>

<section>
	<nav id="filter">
		<div id="category"><h2>CATEGORY</h2></div>
		<h2><a href="" class="bidding">START BIDDING</a></h2>
	</nav>
	
	<div id="qna" class="qna">
	<h2><a href="qna.bd?pg=1" class="qna2" style="color:black">Q&amp;A</a></h2>
	</div>
</section>

<div id="update">
<section class=wrap0>
	<c:forEach var="ob" items="${list}">
		<section class="product1">
					<div class="photo">
					<img src="/BidProject/resources/image/${ob.code }.jpg">
					</div>
				<section class=wrap01>
						<section class="wrap1">		
							<div class="prodname"><a href="/BidProject/auction.au">${ob.prodname}</a><br></div>
										<div class="wrap2">	 
											<div class="ref">${ob.ref}<br></div>
								        	 <div class="price">${ob.price}<br></div> 
											  			[현재가격]<br> 
											 <div class="term">${ob.term}</div>
										</div>
				</section>
				</section>
		</section>
	</c:forEach>
</section>
</div>	
<footer class="footer">
FOOTER : 기타 정보들 입력
</footer>
</body>
</html>