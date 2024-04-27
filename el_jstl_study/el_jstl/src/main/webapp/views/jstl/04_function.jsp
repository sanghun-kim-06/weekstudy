<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="data" value="How are you? I am fine"/>
	<h4><c:out value="${data }"/></h4>
	<h4><c:out value="${fn:toUpperCase(data)}"/></h4>
	<h4><c:out value="${fn:toLowerCase(data)}"/></h4>
	<h4><c:out value="${fn:replace(data, 'fine', 'tired')}"/></h4>
	<h4><c:out value="${fn:contains(data, 'fine')?'좋다':'싫다'}"/></h4>
</body>
</html>