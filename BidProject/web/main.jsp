<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   중고경매 프로젝트  2018-10-17
   <br>

   <div id="search" class="search">
      검색 <input id="query" name="query" type="text" title="검색어 입력"
         maxlength="255" class="input_text" tabindex="1"
          value="" />
         <a href=""><button id="search">검색</button></a>
   </div>
   <br>

   <div id="log">
      <a href="login.go"><button id="log">로그인</button></a>
   </div>

   <div id="sale" >
      <button id="sale">판매하기</button>
   </div>
   <br>
   
    <div id="write">
      <a href="write.bd"><button id="qna">Q&A</button></a>
   </div>
   <div id="mystore" >
      <a href=""><button id="mystore">내 상점이다 제발</button></a>
   </div>
   <br>

   <div id="category">
       <button id="category">카테고리</button>
   </div>
   <br>

</body>