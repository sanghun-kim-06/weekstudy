<%@page import="com.student.vo.StudentVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
    <c:set var="path" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<c:choose>
	<c:when test="${empty list }">
		<section class="m-3">
			<form action="${path }/student/searchbyname.do" method="POST">
				<div class="form-row d-flex">
					<div class="col-4">
						<input class="form-control form-control" type="text" name="studentName" placeholder="이름 조회">
					</div> 
					<div class="col">
						<button type="submit" class="btn btn-primary">이름 조회</button>
					</div>
				</div>
			</form>
			
			<br>
			
			<form action="${path }/student/searchbygrade.do" method="POST">
				<div  class="form-row d-flex">
					<div class="col-4">
						<input class="form-control form-control me-2" type="text" name="grade" placeholder="학년 조회">
					</div> 
					<div class="col">
						<button type="submit" class="btn btn-primary">학년 조회</button>
					</div>
				</div>
			</form>
		
			<div class="d-flex justify-content-end">
				<a href="${path }/student/addstudent.do" class="me-5 btn btn-primary">학생 등록</a>
			</div>
			
			<p class="display-3 text-center">학생데이터를 불러오지 못했습니다.</p>
		</section>
	</c:when>
	<c:otherwise>
		<section class="m-3">
			<form action="${path }/student/searchbyname.do" method="POST">
				<div class="form-row d-flex">
					<div class="col-4">
						<input class="form-control form-control" type="text" name="studentName" placeholder="이름 조회">
					</div> 
					<div class="col">
						<button type="submit" class="btn btn-primary">이름 조회</button>
					</div>
				</div>
			</form>
			
			<br>
			
			<form action="${path }/student/searchbygrade.do" method="POST">
				<div  class="form-row d-flex">
					<div class="col-4">
						<input class="form-control form-control me-2" type="text" name="grade" placeholder="학년 조회">
					</div> 
					<div class="col">
						<button type="submit" class="btn btn-primary">학년 조회</button>
					</div>
				</div>
			</form>
		
			<div class="d-flex justify-content-end">
				<a href="${path }/student/addstudent.do" class="me-5 btn btn-primary">학생 등록</a>
			</div>
			<table class="table mt-5 text-center">
			  <thead>
			    <tr>
			      <th scope="col">번호</th>
			      <th scope="col">이름</th>
			      <th scope="col">나이</th>
			      <th scope="col">학년</th>
			      <th scope="col">반</th>
			      <th scope="col">키</th>
			      <th scope="col">주소</th>
			      <th scope="col">전화번호</th>
			      <th scope="col">성별</th>
			      <th scope="col" colspan="2">비고</th>
			    </tr>
			  </thead>
			  <tbody>
				  <c:forEach var="vo" items="${list }">
				  	 <tr>
				      <th scope="row"><c:out value="${vo.studentNo }"/></th>
				      <td><c:out value="${vo.studentName }"></c:out> </td>
				      <td><c:out value="${vo.age }"/></td>
				      <td><c:out value="${vo.grade }"/></td>
				      <td><c:out value="${vo.classnumber }"/></td>
				      <td><c:out value="${vo.hieght }"/></td>
				      <td><c:out value="${vo.address }"/></td>
				      <td><c:out value="${vo.phone }"/></td>
				      <td><c:out value="${vo.gender }"/></td>
				      <td><a href="${path}/student/updatestudent.do?studentNo=<c:out value="${vo.studentNo}"/>">수정하기</a></td>
				      <td><a href="${path}/student/deletestudent.do?studentNo=<c:out value="${vo.studentNo}"/>">삭제하기</a></td>
				    </tr>
				  </c:forEach>
			  </tbody>
			</table>
		</section>
	</c:otherwise>
</c:choose>
</body>
</html>