<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>formattag</title>
</head>
<body>
	<c:set var="numbertest" value="12345678"/>
	<h3>기본숫자 출력 <c:out value="${numbertest }"/></h3>
	<h3>fmt로 숫자 출력 <fmt:formatNumber value="${numbertest }" /></h3>
	<fmt:setLocale value="ko_KR"/>
	<h3>화폐단위를 표시해서 숫자 출력 <fmt:formatNumber value="${numbertest }" type="currency" /></h3>
	<h3>패턴으로 숫자표시</h3>
	<h3><fmt:formatNumber value="${numbertest }" pattern="###,###,###"/></h3>
	<h3><fmt:formatNumber value="${numbertest }" pattern="000,000,000"/></h3>
	<%-- <fmt:setLocale value="ja_JP"/> --%>
	<h3><fmt:formatNumber value="15.5" pattern="###,###.00" type="currency"/></h3>
	
	<h3>날짜형식 출력하기</h3>
	<c:set var="today" value="<%=new Date() %>"/>
	<h3><c:out value="${today }"/></h3>
	<p>
		fmt:formatDate 태그
			type=
				date: 연, 월, 일만 출력<br>
				time: 시간만 출력<br>
				both: 연, 월, 일, 시, 분, 초를 출력하기<br>
			dateStyle: 날짜를 출력할떄 패턴설정(default, short, long, full)<br>
			timeStyle: 시간을 출력할때 패턴설정(medium, short, long, full)<br>
	</p>
	<h3><fmt:formatDate value="${today }"/></h3>
	<h3><fmt:formatDate value="${today }" type="date"/></h3>
	<h3><fmt:formatDate value="${today }" type="time"/></h3>
	<h3><fmt:formatDate value="${today }" type="both"/></h3>
	<h3><fmt:formatDate value="${today }" type="date" dateStyle="short"/></h3>
	<h3><fmt:formatDate value="${today }" type="time" timeStyle="short"/></h3>
	<h3><fmt:formatDate value="${today }" type="date" dateStyle="long"/></h3>
	<h3><fmt:formatDate value="${today }" type="time" timeStyle="long"/></h3>
	<h3><fmt:formatDate value="${today }" type="date" dateStyle="full"/></h3>
	<h3><fmt:formatDate value="${today }" type="time" timeStyle="full"/></h3>
	<h3><fmt:formatDate value="${today }" type="both" dateStyle="short" timeStyle="short"/></h3>
	<h3>패턴으로 스타일 커스터마이징하기</h3>
	<p>
		yy(년) MM(월) dd(일) hh(시간) mm(분) ss(초) E(요일) 패턴으로 날짜표시
	</p>
	<h4>
		<fmt:formatDate value="${today }" type="date" />
		<fmt:formatDate value="${today }" type="date" pattern="yy-MM-dd E합니다" />
	</h4>
	<h4>
		<fmt:formatDate value="${today }" type="time"/>
		<fmt:formatDate value="${today }" type="time" pattern="hh:mm:ss" />
	</h4>
	
	<h3>로케일 설정에 따라 날짜를 출력하는 방식이 달라짐</h3>
	<fmt:setLocale value="en_US"/>
	<h4>
		<fmt:formatDate value="${today }" type="both" dateStyle="full" timeStyle="full"/>
	</h4>
	<fmt:setLocale value="fr_FR"/>
	<h4>
		<fmt:formatDate value="${today }" type="both" dateStyle="full" timeStyle="full"/>
	</h4>
</body>
</html>