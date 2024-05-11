<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
    <c:set var="path" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mybatis 이용하기</title>
</head>
<body>
	<h2>연결확인</h2>
	<h3>
		<a href="${path }/connecttest.do">DB연결</a>
	</h3>
	
	<h3>mybatis이용하기</h3>
	<h4>
		<a href="${path }/student/insertstudent.do">학생등록</a>
	</h4>
	
	<form action="${path }/student/insertstudentbyname.do">
		<input type="text" name="name">
		<input type="submit" value="학생저장">
	</form>
	<h4>학생 전체 정보 저장</h4>
	<!-- /student/insertstudentall.do POST  -->
	<form action="${path }/student/insertstudentall.do" method="post">
		<input type="text" name="name"> 이름 <br>
		<input type="number" name="tel"> 전번<br>
		<input type="text" name="email"> 이메일<br>
		<input type="text" name="address"> 주소<br>
		<input type="submit" value="학생저장">
	</form>
	
	<!-- 숙제 :  update, delete를 구현하기
		전화번호, 이메일 수정 기능
		학생번호를 입력받아 삭제하는 기능
	  -->
	<h2>DB에 저장된 데이터 조회하기</h2>
	<h3>저장된 학생수 조회</h3>
	<h4>
		<a href="${path }/student/studentcount.do">학생수조회</a>
	</h4>
	<h4>
		<a href="${path }/student/studentdata.do?no=87">87번 학생 조회</a>
	</h4>
	<!-- 학생번호를 입력받아 학생 조회하기 -->
</body>
</html>