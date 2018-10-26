<%@page import="com.user.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.category.vo.*" %>
<% 
	int total= ((List<CategoryVO>)request.getAttribute("list")).get(0).getTotal();
	int pg = ((List<CategoryVO>)request.getAttribute("list")).get(0).getPage();
	String cat1 = "";

	
	if(CatogoryPaging.categorycheck == true){
		cat1 = ((List<CategoryVO>)request.getAttribute("list")).get(0).getCat1();
	}
		
	System.out.println("현재 페이지 : " + pg);
%>

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
	$('#next').click(function(){
		var dataToPost = { 
				"page" : $("#nxt_page").val(),
		        "cat1" : $("#category").val()
		        };
		$.ajax({
	        url : "paging.ct",
	        type: "get",
	        data :dataToPost,
	        error : function(request,status,error){
	            alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	        	},
	        success : function(responseData){
	        	console.log(responseData);
	        	var total = "<section class=wrap0>";
	        	var box1 = "<section class='product1'><div class='photo'><img src='/BidProject/resources/image/"
	        	var box2 = ".jpg' style='width:100%; height: 180px;'></div><section class='wrap01'><section class='wrap1'><div class='prodname'><a href='/BidProject/auction.au'>";
				var box3 = "</a><br></div><div class='wrap2'><div class='ref'>";
				var box4 = "<br></div><div class='price'>";
				var box5 = "<br></div>[현재가격]<br><div class='term'>"
				var last = "</div></div></section></section></section>"
	        	$.each(responseData, function(index, entry){
					total += box1 + entry.code + box2+ entry.prodname + box3 + entry.ref + box4 + entry.price + box5 + entry.term + last;
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
		<a href="main.go?page=1"><h1>BID YOUR ITEMS</h1></a>
	</div>
</section>


<section>
	<nav id="filter">

		<div id="category"><h2>CATEGORY</h2></div>
		<h2><a href="sale.sa" class="sale">START BIDDING</a></h2>

		<div id="menu"><h2>CATEGORY</h2>
		<span>
		<a href="main.ct?cat1=AA">의류</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
		</span>
		<span>
		<a href="main.ct?cat1=BB">패션잡화</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		</span>
		<span>
		<a href="main.ct?cat1=CC">뷰티미용</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		</span>
		<span>
		<a href="main.ct?cat1=DD">유아,아동,출산</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		</span>
		<span>
		<a href="main.ct?cat1=EE">스포츠레저</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		</span>
		<span>
		<a href="main.ct?cat1=FF">디지털가전</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		</span>
		<span>
		<a href="main.ct?cat1=GG">애완</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		</span>
		<span>
		<a href="main.ct?cat1=HH">도서/티켓</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		</span>
	</div>
		<h2><a href="sale.sa" class="sale">START BIDDING</a></h2>
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
					<img src="/BidProject/resources/image/${ob.code }.jpg" style="width:100%; height: 180px;">
					</div>
				<section class=wrap01>
						<section class="wrap1">		
							<div class="prodname"><a href="/BidProject/auction.au?code=${ob.code}">${ob.prodname}</a><br></div>
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
<input type="hidden" id="category" value="<%=cat1%>">
<% if(pg != 1){ %>
	<div id="previous">
		<input type="hidden" id="pre_page" value="<%=pg-1%>">
		<h4>Previous</h4>
	</div>
<% } %>

<% 
int totalP=(total+9)/10;
if(pg != totalP){%>
	<div id="next">
		<input type="hidden" id="nxt_page" value="<%=pg+1%>">
		
		<h4>Next</h4>
	</div>
<% 
}

%>
	
</div>
	

<footer class="footer">
FOOTER : 기타 정보들 입력
</footer>
</body>
</html>