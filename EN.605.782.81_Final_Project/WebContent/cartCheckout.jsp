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


</style>
<body>
<div class="topDiv">
	<%@ include file="horizontalPageNav.jsp" %>
</div>
<div class="bottomDiv">
	<%@ include file="verticalPageNav.jsp" %>
</div>
<div style="margin-left:12%;padding:1px 16px;height:1000px;">
<h2>Checkout</h2>
  <div>
  	<table>
	  	<tr>
	  		<td>Number of items : {cart.itemsList.length} </td>
		</tr>
		<tr>
	  		<td>Shipping Address</td>
	  	</tr>
		<tr>
	  		<td>Credit Card #</td>
	  	</tr>
		<tr>
	  		<td>CVV</td>
	  	</tr>
		<tr>
	  		<td>Expiration Date</td>
	  	</tr>
  		<tr>
	  		<td>Billing Address</td>
	  	</tr>
  	</table>
	<input type="hidden" name="action" value="checkout">
	<input type="submit" value="Purchase">
	<button><a href="TestServlet?action=navigation&page=cart&option=ViewCart">View Cart</a></button>
  </div>
</div>
</body>
</html>