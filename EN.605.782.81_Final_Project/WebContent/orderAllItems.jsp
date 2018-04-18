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
<h2>All Items</h2>
  <div>
  	<table>
  		<tr>
  			<th>
  				<select name="productCategory">
					<option value="type0">All</option>
					<option value="type1">Type 1</option>
					<option value="type2">Type 2</option>
					<option value="type3">Type 3</option>
					<option value="type4">Type 4</option>
				</select>
  			</th>
  			<th>
  				<form action="TestServlet" method="post">
  					<!--  TODO combine search criteria from above as param to be passed -->
					<input type="hidden" name="action" value="">
					<input type="submit" value="filter">
				</form>
  			</th>
  		</tr>
  		
  	</table>
  	<table>
	  	<c:forEach items="${itemList}" var="item">
	  		<tr>
	  			<td>
	  				<!-- item picture -->
	  			</td>
	  			<td>
	  				{item.name}
	  			</td>
	  			<td>
	  				{item.description}
	  			</td>
	  			<td>
	  				{item.price}
	  			</td>
	  			<td>
					<form action="TestServlet" method="post">
						<input type="hidden" name="action" value="${item.name}">
						<select name="quantity">
							<option value="quantity1">1</option>
							<option value="quantity2">2</option>
							<option value="quantity3">3</option>
							<option value="quantity4">4</option>
							<option value="quantity5">5</option>
						</select>
						<input type="submit" value="Add to cart">
					</form>
	  			</td>
	  		</tr>
	  	</c:forEach>
  	</table>
  </div>
  
</div>
</body>
</html>