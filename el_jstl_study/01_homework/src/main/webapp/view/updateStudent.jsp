<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<%-- <c:set var="vo" value="${list.get(1) }"></c:set> --%>
<section class="m-5">
	<h2 class="display-5 text-center mb-5">학생 수정</h2>
	<form class="needs-validation" action="${path }/student/updatestudent.do" method="POST" novalidate>
		<div  class="mb-3">
			<input class="form-control form-control-lg" type="text" name="studentNo" value="<c:out value="${vo.studentNo }"/>" readonly>
		</div>
		<div  class="mb-3">
			<input class="form-control form-control-lg" type="text" name="name" placeholder="이름 입력" value="<c:out value="${vo.studentName }"/>" required>
			<div class="invalid-feedback">
		        이름을 입력하세요
		    </div>	
		</div>
		<div  class="mb-3">
			<input class="form-control form-control-lg" type="text" name="age" placeholder="나이 입력" value="<c:out value="${vo.age }"/>" required>
			<div class="invalid-feedback">
		        나이를 입력하세요
		    </div>
		</div>
		<div class="mb-3">
			<select class="form-select form-select-lg mb-3" name="grade" required>
			  <option value="1" <c:out value="${vo.grade==1 ? 'selected' : ''}"/> >1</option>
			  <option value="2" <c:out value="${vo.grade==2 ? 'selected' : ''}"/> >2</option>
			  <option value="3" <c:out value="${vo.grade==3 ? 'selected' : ''}"/> >3</option>
			</select>
			<div class="invalid-feedback">
		        나이를 입력하세요
		    </div>
		</div>
		<div  class="mb-3">
			<input class="form-control form-control-lg" type="text" name="classnumber" placeholder="반" value="<c:out value="${vo.classnumber }"/>" required>
		<div class="invalid-feedback">
		        나이를 입력하세요
		    </div>
		</div>
		<div  class="mb-3">
			<input class="form-control form-control-lg" type="text" name="height" placeholder="키" value="<c:out value="${vo.hieght }"/>" required>
			<div class="invalid-feedback">
		        나이를 입력하세요
		    </div>
		</div>
		<div  class="mb-3">
			<input class="form-control form-control-lg" type="text" name="address" placeholder="주소" value="<c:out value="${vo.address }"/>" required>
			<div class="invalid-feedback">
		        나이를 입력하세요
		    </div>
		</div>
		<div  class="mb-3">
			<input class="form-control form-control-lg" type="text" name="phone" placeholder="전화번호" value="<c:out value="${vo.phone }"/>" required>
			<div class="invalid-feedback">
		        나이를 입력하세요
		    </div>
		</div>
		<div class="m-3">
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="gender" id="gender" value="남"
			  <c:out value="${vo.gender=='남' ? 'checked' : '' }"/> required>
			  <label class="form-check-label" for="gender">남</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="gender" id="gender" value="여"
			  <c:out value="${vo.gender=='여' ? 'checked' : '' }"/> required>
			  <label class="form-check-label" for="gender">여</label>
			</div>
			<div class="invalid-feedback">
		        나이를 입력하세요
		    </div>
		</div>
		<div class="m-auto d-flex justify-content-center">
			  <button class="btn btn-primary me-2" type="submit">등록</button> 
			  <button class="btn btn-primary" type="reset">취소</button>
			</div>
	</form>
</section>
<script>
(function () {
	  'use strict'

	  // Fetch all the forms we want to apply custom Bootstrap validation styles to
	  var forms = document.querySelectorAll('.needs-validation')

	  // Loop over them and prevent submission
	  Array.prototype.slice.call(forms)
	    .forEach(function (form) {
	      form.addEventListener('submit', function (event) {
	        if (!form.checkValidity()) {
	          event.preventDefault()
	          event.stopPropagation()
	        }

	        form.classList.add('was-validated')
	      }, false)
	    })
	})()
</script>
</body>
</html>