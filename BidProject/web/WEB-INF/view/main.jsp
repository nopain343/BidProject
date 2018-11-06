<%@page import="com.user.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.category.vo.*" %>
<% 
	int total = 0;
	int pg= 0;
	String cat1 = "";
	int searchn = ((List<CategoryVO>)request.getAttribute("list")).size();
	
	if(searchn != 0){
	total= ((List<CategoryVO>)request.getAttribute("list")).get(0).getTotal();
	
	System.out.println("main.jsp에서 total갯수 : " + total);
	pg = ((List<CategoryVO>)request.getAttribute("list")).get(0).getPage();
	
	
	
	if(CatogoryPaging.categorycheck == true){
		cat1 = ((List<CategoryVO>)request.getAttribute("list")).get(0).getCat1();
%>
	<c:set var="check" value="true"/>
<% 
	}else{
%>		
	<c:set var="check" value="false"/>		
<% 		
	}
	System.out.println("현재 페이지 : " + pg);
 	
	}
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
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/category.js"></script> --%>
<script>
function ajax(value){
	var dataToPost = { 
			"page" : value,
	        "cat1" :  $("#category").val()
	        };
	$.ajax({
        url : "paging.ct",
        type: "get",
        data :dataToPost,
        error : function(request,status,error){
            alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
        	},
        success : function(responseData){
        	paging(responseData);
        	console.log(responseData);
        	
        }
    });
	
}

function paging(data){
	console.log("data[0] : " + data[0].prodname);
	var total = "<section class=wrap0>";
	var box1 = "<section class='product1'><div class='photo'><img src='/BidProject/resources/image/"
	var box2 = ".jpg' style='width:100%; height: 180px;'></div><section class='wrap01'><section class='wrap1'><div class='prodname'><a href='/BidProject/auction.au?code=";
	var plus = "'>";
	var box3 = "</a><br></div><div class='wrap2'><div class='ref'>";
	var box4 = "<br></div><div class='price'>";
	var box5 = "<br></div>[현재가격]<br><div class='term'>";
	var last = "</div></div></section></section></section>";
	$.each(data, function(index, entry){
		total += box1 + entry.code + box2+ entry.code + plus + entry.prodname + box3 + entry.ref + box4 + entry.price + box5 + entry.term + last;
});

	if(${check} == true){
		
		total += "<input type='hidden' id='category' value='" + data[0].cat1 + "'>";
		}else{
			
		total += "<input type='hidden' id='category' value=''>";	
		}
			
	
	var totalP = (data[0].total+9)/10;
	console.log(totalP);
	if(data[0].page != 1){
		var prepage = parseInt(data[0].page)-1;
		total += "<div onclick='ajax(" + prepage + ")'><h4>Previous</h4></div>";
	}
	
	if(data[0].page != totalP){
			
		var nextpage = parseInt(data[0].page)+1;
		total += "<div onclick='ajax(" + nextpage + ")'><h4>Next</h4></div>";
	 
	}
	$('#update').html(total+"</section>");

}

// 메뉴 효과 주기 
$(document).on('mouseover','#menuclick', function(){
	
	$('#menubar').slideDown(200);	
	
});

$(document).on('mouseleave','#filter', function(){
	$('#menubar').slideUp(200);
	
}); 


</script>


</head>
<body>
<jsp:include page="/menu.jsp" flush="true" />


<section id="main" class="main">
	<div>
		<h1>BID YOUR ITEMS</h1>
	</div>
</section>


<section>
	<nav id="filter">
		<span class="boldmenu" id="menuclick">CATEGORY</span>
		<span id="menubar">
		<a href="main.ct?cat1=AA">의류</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
		<a href="main.ct?cat1=BB">패션잡화</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		<a href="main.ct?cat1=CC">뷰티미용</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		<a href="main.ct?cat1=DD">유아,아동,출산</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		<a href="main.ct?cat1=EE">스포츠레저</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		<a href="main.ct?cat1=FF">디지털가전</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		<a href="main.ct?cat1=GG">애완</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		<a href="main.ct?cat1=HH">도서/티켓</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		</span>
		<span class="boldmenu"><a href="/BidProject/sale.sa" class="sale">START BIDDING</a></span>
	</nav>	

	
	<div id="qna" class="qna">
	<h2><a href="qna.bd?pg=1" class="qna2" style="color:black">Q&amp;A</a></h2>
	</div>
</section>

<div id="update">
<%
if(searchn != 0){ 
%>

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

<% 
int totalP=(total+9)/10;
if(pg != totalP){%>
	
	<div onclick="ajax(<%=pg+1%>)">
		<input type="hidden" id="nxt_page" value="<%=pg+1%>">
		
		<h4>Next</h4>
	</div>
<% 
}
}else{
%>
	<h4>찾으시는 상품이 없습니다.<h4>
<%
}
%>
	 


</div>
	

<ul class="footer">
<li>LET IT BID 소개</li>
<li>이용 안내</li>
<li>개인정보 처리방식</li>
<li>이용 약관</li>
</ul>
<div class="footerdesc">
 LET IT BID 주소 : 335 효령로 서초1동 서초구 서울특별시     TEL : 02-754-7302 <br>
 LET IT BID는 판매중개자로서 중고거래마켓의 거래 당사자가 아니며, 입점판매가 등록한 상품정보 및 거래에 대해 책임을 지지 않습니다.
</div>
</body>
</html>