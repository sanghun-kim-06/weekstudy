<%@page import="java.util.List, com.jstl.model.dto.Food"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>코어태그 사용하기</title>
</head>
<body>
	<h2>저장, 출력하는 태그</h2>
	<p>
		c:set var="" value="" [scope=] -> 내장객체에 데이터를 저장하는 태그 <br>
		c:out value="el표현식" default="" especeXml="" -> 내장객체에 저장되어있는 값을 페이지에 출력함 <br>
	</p>
	<h3>값을 저장하기</h3>
	<c:set var="comment" value="여러분 힘내요"/>
	<h4><c:out value="${comment }" /></h4>
	<c:set var="test" value="<script>alert('쨘');</script>"/>
	<p><c:out value="${test }" escapeXml="false"/></p>
	<c:set var="bs" value="유병승"/>
	<p><c:out value="${bs }" default="bs없어" />야</p>
	
	<h3>if, for</h3>
	<p>
		c:if test="$ {조건식 }" / c:if 실행할 것
	</p>
	<c:set var="su" value="20"/>
	<c:if test="${su > 10}">
		<h3><c:out value="${su }"/>는 10보다 그다</h3>
	</c:if>
	<c:if test="${su <= 20 }">
		<h3><c:out value="${su }"/>는 20보다 작거나 같다</h3>
	</c:if>
	<c:if test="${su > 5 }">
		<c:if test="${su > 10 }">
			<h3>10보다 크네 ㅋ</h3>
		</c:if>
	</c:if>
	
	<h2>c:choose 태그 이용하기</h2>
	<p>
		c:choose태그
			c:when test=""
			c:when test=""
			c:otherwise -> else
	</p>
	
	<c:set var="su2" value="5"/>
	<c:choose>
		<c:when test="${su2 < 10 }">
			<p>10보다 작음</p>
		</c:when>
		<c:when test="${su2 < 15 }">
			<p>15보다 작은값</p>
		</c:when>
		<c:otherwise>
			<p>10보다 작지 않고 15보다도 작지 않은 값</p>
		</c:otherwise>
	</c:choose>
	
	<h2>반복문</h2>
	<p>
		c:forEach 태그를 이용한다<br>
		begin: 시작하는 숫자<br>
		end: 끝나는 숫자<br>
		step: 증감하는 숫자<br>
		var: 변화되는 값을 저장하는 변수<br>
		items: 순회할 데이터(배열, collection)<br>
		varStatus: 반복문에 대한 정보를 저장하는 객체(index, 반복한 수 등)<br>
	</p>
	
	<h2>1부터 10까지 출력하기</h2>
	<c:forEach var="i" begin="1" end="10" step="1">
		<p>오늘 만나서 반가워요 <c:out value="${i }"/></p>
	</c:forEach>
	
	<h2>리스트나 배열에 있는 데이터를 출력하기</h2>
	<%
		List<String> names = List.of("김상훈", "김용민", "박은서", "심지호", "정은찬");
		request.setAttribute("names", names);
	%>
	<ul>
		<c:forEach var="name" items="${names }">
			<c:if test="${String.valueOf(name.charAt(0)) eq '김' }">
				<li><c:out value="${name }"/></li>
			</c:if>
		</c:forEach>
	</ul>
	
	<%
		List<Food> foods = List.of(new Food("치킨", 20000, "새콤달콤")
				, new Food("낙곱새", 24000, "매콤")
				, new Food("초밥", 15000, "신선함")
				, new Food("지지고", 4500, "물리는맛")
				, new Food("취두부", 5000, "쓰레기맛"));
		request.setAttribute("foods", foods);
	%>
	<table>
		<thead>
			<tr>
				<th>음식명</th>
				<th>가격</th>
				<th>맛</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="food" items="${foods }">
				<c:if test="${food.price < 10000 }">
					<tr>
						<td><c:out value="${food.name }"/></td>
						<td><c:out value="${food.price }"/></td>
						<td><c:out value="${food.flavor }"/></td>
					</tr>
				</c:if>
			</c:forEach>
		</tbody>
	</table>
	
	
	<h3>다른페이지 가져오기</h3>
	<p>
		c:import 태그 -> jsp:include랑 비슷한 태그
			var="" url=""
	</p>
	<c:import var="header1" url="/views/common/header.jsp">
		<c:param name="title" value="import"></c:param>
		<c:param name="style" value="color:lightgreen; background-color: coral;"/>
	</c:import>
	${header1 }
</body>
</html>