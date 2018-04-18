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
<h2>Dogs Available for Adoption</h2>
  <div>
    	<table>
  		<tr>
  			<th>
  				<select name="breed">
					<option value="breed0">All breeds</option>
					<option value="breed1">German Shepard</option>
					<option value="breed2">Lab</option>
					<option value="breed3">Retriever</option>
					<option value="breed4">Poodle</option>
				</select>
  			</th>
  			<th>
  				<select name="age">
					<option value="age0">All ages</option>
					<option value="age1">0-3 yrs</option>
					<option value="age2">3-10 yrs</option>
					<option value="age3">10+ yrs</option>
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
	  	<c:forEach items="${dogList}" var="dog">
	  		<tr>
	  			<td>
	  				<!-- Dog picture -->
	  			</td>
	  			<td>
	  				${dog.name}
	  			</td>
	  			<td>
	  				${dog.age}
	  			</td>
	  			<td>
	  				${dog.type}
	  			</td>
	  			<td>
					<form action="TestServlet" method="post">
						<input type="hidden" name="action" value="${dog.name}">
						<input type="submit" value="Request More Information">
					</form>
	  			</td>
	  		</tr>
	  	</c:forEach>
  	</table>
  </div>
  
</div>
</body>
</html>