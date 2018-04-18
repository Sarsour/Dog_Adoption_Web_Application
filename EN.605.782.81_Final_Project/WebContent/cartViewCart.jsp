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
<h2>Shopping Cart</h2>
  <div>
  	<table>
	  	<c:forEach items="${cart.itemsList}" var="item">
	  		<tr>
	  			<td>
	  				<!-- item picture -->
	  			</td>
	  			<td><form action="" method="post">
	  				<input type="hidden" name="action" value="${item.name}">
	  				<select name="quantity">
						<option value="quantity1">1</option>
						<option value="quantity2">2</option>
						<option value="quantity3">3</option>
						<option value="quantity4">4</option>
						<option value="quantity5">5</option>
					</select>
  				</form></td>
  				<td>
					<input type="submit" value="Update Quantity">
	  			</td>
	  			<td>
					<form action="" method="post">
						<input type="hidden" name="itemToBeRemoved" value="${item.name}">
						<input type="submit" value="Remove from cart">
					</form>
	  			</td>
	  		</tr>
	  	</c:forEach>
  	</table>
	<input type="hidden" name="action" value="checkout">
	<input type="submit" value="Proceed to Checkout">
  </div>
</div>
</body>
</html>