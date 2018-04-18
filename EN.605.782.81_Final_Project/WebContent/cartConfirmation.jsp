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
<h3>Thank you for your purchase! A copy of the receipt below was sent to: ${user.email} </h3>
			<div>
			    <table>
			    		<c:choose>
			    		<c:when test="${cart.itemsList.size() > 0}">
			    			<tr>
						    <th>Your Purchase</th>
						    <th></th>
					    </tr>
					    <tr>
						    <th>Item</th>
						    <th>Quantity</th>
						    <th>Total Items Cost</th>
					    </tr>
			    		</c:when>
			    		</c:choose>
					<c:forEach items="${cart.itemsList}" var="items">
					
								<tr>
									<td> ${item.name}</td>
									<td>${item.name}</td>
									<td>$${item.cost}.00</td>
								</tr>	
					    	
			    		</c:forEach>
					<tr>
						<th>Total Cost</th>
						<td></td>
						<td>$${cart.totalCost}.00</td>
					</tr>
				</table>
			</div>
</div>
</body>
</html>