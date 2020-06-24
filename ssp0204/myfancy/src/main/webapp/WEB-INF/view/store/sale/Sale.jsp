<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품판매</title>
</head>
<body>
<aside id = "header">
<%@ include file="../header.jsp" %>
</aside>
<aside id = "left">
<%@ include file="../left.jsp" %>
</aside>
 
 <!-- 상품판매  (중앙부분)-->
<table style="width:70%">
   <tr><th>상품명</th><th>가격</th></tr>
   <c:forEach var="product" items="${productList}">
         <tr>
            <td><a href="<c:url value='addSaleProducts?product_id=${product.product_id}'/>">
            ${product.product_name}</a></td>
            <td>${product.list_price}</td>
         </tr>
   </c:forEach>
</table>

<!-- 카트 (오른쪽부분) -->
<form:form modelAttribute="sessionSaleCart" action="payment">
<table style="width:70%">
   <tr><th>상품명</th><th>수량</th><th>가격</th></tr>
	<c:forEach var="cart" items="${sessionSaleCart.cartList}">
		<tr>
			<td>${cart.key.product_name}</td>
			<td>${cart.value}</td>
			<td>${cart.key.list_price*cart.value}</td>
		</tr>
	</c:forEach>
</table>
<%-- <label for="quantity">수량</label>
<form:input path="quantity" /> --%>
<%-- 총 가격 : ${sessionSaleCart.getSubSaleTotal()} --%>
<input type="button" value="취소"/>
<input type="submit" value="결제완료"/>
</form:form>

세션카트 존재 여부 : <%=session.getAttribute("sessionSaleCart") != null?"존재":"없음" %>
</body>
</html>