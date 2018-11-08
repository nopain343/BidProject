<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="/menu.jsp" flush="true" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/sale.css">
<link href="https://fonts.googleapis.com/css?family=Cinzel"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/jquery.datetimepicker.css" />
<script src="/jquery.js"></script>
<title>Insert title here</title>
<body>
	<c:choose>
		<c:when test="${empty loginOK}">
			<script type="text/javascript">
				alert("로그인이 필요합니다")
			</script>
		</c:when>

		<c:when test="${!empty loginOK}">

			<section id="main" class="main">
				<div>
					<h1>BID NOW</h1>
				</div>
			</section>
			<jsp:include page="/Categorybar.jsp" flush="true" />

			<form:form method="post" enctype="multipart/form-data"
				modelAttribute="categoryVO" action="/BidProject/saleUpload.sa">
				<div class="container">
					<div class="outer">
						<div class="inner">
							<div class="centered">
								<div>
									<input type="hidden" name="id" value="${loginOK.id}">
								</div>

								<div class="prodcover">
									<div class="prodtitle">상품명</div>
									<div>
										<input type="text" name="prodname" id="prodname"
											class="prodname"><br>
									</div>
								</div>

								<div>
									<div class="descover">
										<div class="descrip">
											<textarea rows="12" cols="40" name="descrip" id="descrip"
												style="resize: none; border: 1px solid; width: 100%;"></textarea>
										</div>
									</div>
								</div>


								<div class="selec">

									<div class="cat1cover">
										<label>분류</label>
										<div class="cat1">
											<select name="cat1" id="cat1">
												<option value='' selected>-카테고리-</option>
												<option value="AA">의류</option>
												<option value="BB">패션잡화</option>
												<option value="CC">뷰티미용</option>
												<option value="DD">유아/아동/출산</option>
												<option value="EE">스포츠레저</option>
												<option value="FF">디지털가전</option>
												<option value="GG">애완</option>
												<option value="HH">도서/티켓</option>
											</select>
										</div>
									</div>

									<div class="condicover">
										<label>상태</label>
										<div class="condition">
											<select name="condition" id="condition">
												<option value='' selected>-상품 상태-</option>
												<option>중고</option>
												<option>중고+하자</option>
												<option>새물품</option>
												<option>새것+하자</option>
												<option>거의새것</option>
											</select>
										</div>
									</div>
									<div class="pricecover">
										<label>시작가</label>
										<div>
											<input type="number" name="price" id="price">
										</div>
									</div>
									
									
									
									<div class="middle">
										<div class="termcover">
											<label class="termtitle">마감 시간</label>
											<div>
												<select name="year" id="year">
													<option value='' selected>YYYY</option>
													<option>2018</option>
													<option>2019</option>
													<option>2020</option>
												</select> <select name="month" id="month">
													<option value='' selected>MM</option>
													<option>01</option>
													<option>02</option>
													<option>03</option>
													<option>04</option>
													<option>05</option>
													<option>06</option>
													<option>07</option>
													<option>08</option>
													<option>09</option>
													<option>10</option>
													<option>11</option>
													<option>12</option>
												</select> <select name="day" id="day">
													<option value='' selected>DD</option>
													<option>01</option>
													<option>02</option>
													<option>03</option>
													<option>04</option>
													<option>05</option>
													<option>06</option>
													<option>07</option>
													<option>08</option>
													<option>09</option>
													<option>10</option>
													<option>11</option>
													<option>12</option>
													<option>13</option>
													<option>14</option>
													<option>15</option>
													<option>16</option>
													<option>17</option>
													<option>18</option>
													<option>19</option>
													<option>20</option>
													<option>21</option>
													<option>22</option>
													<option>23</option>
													<option>24</option>
													<option>25</option>
													<option>26</option>
													<option>27</option>
													<option>28</option>
													<option>29</option>
													<option>30</option>
													<option>31</option>
												</select> <select name="hour" id="hour">
													<option value='' selected>hr</option>
													<option>00</option>
													<option>01</option>
													<option>02</option>
													<option>03</option>
													<option>04</option>
													<option>05</option>
													<option>06</option>
													<option>07</option>
													<option>08</option>
													<option>09</option>
													<option>10</option>
													<option>11</option>
													<option>12</option>
													<option>13</option>
													<option>14</option>
													<option>15</option>
													<option>16</option>
													<option>17</option>
													<option>18</option>
													<option>19</option>
													<option>20</option>
													<option>21</option>
													<option>22</option>
													<option>23</option>
												</select> <select name="min" id="min">
													<option value='' selected>min</option>
													<option>00</option>
													<option>01</option>
													<option>02</option>
													<option>03</option>
													<option>04</option>
													<option>05</option>
													<option>06</option>
													<option>07</option>
													<option>08</option>
													<option>09</option>
													<option>10</option>
													<option>11</option>
													<option>12</option>
													<option>13</option>
													<option>14</option>
													<option>15</option>
													<option>16</option>
													<option>17</option>
													<option>18</option>
													<option>19</option>
													<option>20</option>
													<option>21</option>
													<option>22</option>
													<option>23</option>
													<option>24</option>
													<option>25</option>
													<option>26</option>
													<option>27</option>
													<option>28</option>
													<option>29</option>
													<option>30</option>
													<option>31</option>
													<option>32</option>
													<option>33</option>
													<option>34</option>
													<option>35</option>
													<option>36</option>
													<option>37</option>
													<option>38</option>
													<option>39</option>
													<option>40</option>
													<option>41</option>
													<option>42</option>
													<option>43</option>
													<option>44</option>
													<option>45</option>
													<option>46</option>
													<option>47</option>
													<option>48</option>
													<option>49</option>
													<option>50</option>
													<option>51</option>
													<option>52</option>
													<option>53</option>
													<option>54</option>
													<option>55</option>
													<option>56</option>
													<option>57</option>
													<option>58</option>
													<option>59</option>
												</select>
											</div>
										</div>
										
										<div class="filecover">
												<label class="filetitle">업로드</label>
												<div>
													<input type="file" name="file" placeholder="이미지">
													<form:errors path="file" />
												</div>
											</div>
										
										</div>
										
										
										
<!-- 										<div class="bottom">
											
											<div>
												<label>해시태그</label>
												<div>
													<input type="text" name="ref">
												</div>

											</div>
										</div>
										
										
										
										<div>

											<input type="submit" id="submit" value="등록"> <input
												type="reset" id="submit" value="수정"> <input
												type="reset" id="submit" value="돌아가기">
										</div> -->
									</div>
									
									
									
								</div>
							</div>
						</div><!--outer end  -->
					</div><!--container end  -->


			</form:form>

		</c:when>
	</c:choose>
</body>
</html>