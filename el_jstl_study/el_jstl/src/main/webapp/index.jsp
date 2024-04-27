<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 이용할 jstl 태그를 선언 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/views/common/header.jsp">
	<jsp:param name="title" value="Main"/>
	<jsp:param name="style" value="color:skyblue; background-color: yellow;"/>
</jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl</title>
</head>
<body>
	<h2>jstl 적용하기</h2>
	<p>외부라이브러리로 외부에서 제공하는 jar파일을 가져와서 사용을 한다</p>
	
	<h2>표준 액션 태그</h2>
	<p>
		그냥 태그형식으로 사용할 수 있는 태그<br>
		jsp:태그명 속성="속성값"
	</p>
	<ul>
		<li>
			다른페이지를 불러와 출력해주는 태그 : jsp:include page=""
		</li>
		<li>
			파라미터 데이터를 전송해주는 태그 <br>
			jsp:param name="" value=""
		</li>
	</ul>
</body>
</html>