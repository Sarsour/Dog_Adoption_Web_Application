<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
.topDiv {
        padding: 0px 0px 46px 0px;
    
}

.bottomDiv {
    margin: 0;
    padding: 0px 0px 0px 0px;
    
}

<!-- TODO need import for User -->

</style>
<body>
<div class="topDiv">
	<%@ include file="horizontalPageNav.jsp" %>
</div>
<div class="bottomDiv">
	<%@ include file="verticalPageNav.jsp" %>
</div>
<div style="margin-left:12%;padding:1px 16px;height:1000px;">
<h2>Account Information</h2>

First Name 
<c:choose>
	<c:when test="${user.firstName != null}">
		<input type="text" required value=${user.firstName}>
	</c:when>
	<c:otherwise>
		<input type="text" required>
	</c:otherwise>
</c:choose>

Last Name 
<c:choose>
	<c:when test="${user.lastName != null}">
		<input type="text" required value=${user.lastName}>
	</c:when>
	<c:otherwise>
		<input type="text" required>
	</c:otherwise>
</c:choose>

Email 
<c:choose>
	<c:when test="${user.email != null}">
		<input type="text" required value=${user.email}>
	</c:when>
	<c:otherwise>
		<input type="text" required>
	</c:otherwise>
</c:choose>

Password
<c:choose>
	<c:when test="${user.password != null}">
		<input type="text" required value=${user.password}>
	</c:when>
	<c:otherwise>
		<input type="text" required>
	</c:otherwise>
</c:choose>

Shipping Address 
<c:choose>
	<c:when test="${user.shippingAddress != null}">
		<input type="text" required value=${user.shippingAddress}>
	</c:when>
	<c:otherwise>
		<input type="text" required>
	</c:otherwise>
</c:choose>

Credit Card # 
<c:choose>
	<c:when test="${user.creditCardNumber != null}">
		<input type="text" required value=${user.creditCardNumber}>
	</c:when>
	<c:otherwise>
		<input type="text" required>
	</c:otherwise>
</c:choose>

CVV 
<c:choose>
	<c:when test="${user.cvv != null}">
		<input type="text" required value=${user.cvv}>
	</c:when>
	<c:otherwise>
		<input type="text" required>
	</c:otherwise>
</c:choose>

Expiration Date
<c:choose>
	<c:when test="${user.expirationDate != null}">
		<input type="text" required value=${user.expirationDate}>
	</c:when>
	<c:otherwise>
		<input type="text" required>
	</c:otherwise>
</c:choose>

Billing Address 
<c:choose>
	<c:when test="${user.billingAddress != null}">
		<input type="text" required value=${user.billingAddress}>
	</c:when>
	<c:otherwise>
		<input type="text" required>
	</c:otherwise>
</c:choose>


</div>
</body>
</html>