<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<title>직원 등록</title>
<aside id = "header">
<%@ include file="../header.jsp" %>
</aside>
<hr>
<table width="100%">
	<tr align="center">
		<td align="center" width="10%">
			<aside id = "left">
			<%@ include file="../left.jsp" %>
			</aside>
		</td>
		<td align="center" width="90%">
			<h3>직원 수정</h3>
			<form:form modelAttribute="employeeForm" method="post" action="${pageContext.request.contextPath}/store/emp/employer/update/${emp.emp_id }">
				<table border="1" width="300">
					<tr align="center">
						<td align="center">
							<br/>
							<label for="id">ID</label>: 
							<form:input path="employee.emp_id" value="${emp.emp_id }" readonly="true"/>
							<form:errors path="employee.emp_id" />
							<%-- <input type="text" value="${emp.emp_id }" readonly/> --%>
							<br/><br/>
							<label for="name">이름</label>: 
							<form:input path="employee.emp_name" value="${emp.emp_name }"/>
							<form:errors path="employee.emp_name" />
							<br/><br/>
							<label for="address">주소</label>: 
							<form:input path="employee.address" value="${emp.address }"/>
							<form:errors path="employee.address" />
							<br/><br/>
							<label for="phone">핸드폰 번호</label>: 
							<form:input path="employee.phonenum" value="${emp.phonenum }"/>
							<form:errors path="employee.phonenum" />
							<br/><br/>
							<label for="email">e-mail</label>: 
							<form:input path="employee.email" value="${emp.email }"/>
							<form:errors path="employee.email" />
							<br/><br/>
							<label for="bankaccount">계좌번호</label>: 
							<form:input path="employee.bankaccount" value="${emp.bankaccount }"/>
							<form:errors path="employee.bankaccount" />
							<br/><br/>
							<input type="submit" value="수정하기" onclick="alert('수정이 완료되었습니다.')" />
							<input type="button" value="직원삭제" onclick="location.href='${pageContext.request.contextPath}/store/emp/employer/remove/${emp.emp_id }'" />
							<br/>
						</td>
					</tr>
	</table>
	</form:form>
		</td>
	</tr>
</table>