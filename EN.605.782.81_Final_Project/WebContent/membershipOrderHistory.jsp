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
<h2>Order History</h2>
  <h3>Try to scroll this area, and see how the sidenav sticks to the page</h3>
  <p>Notice that this div element has a left margin of 25%. This is because the side navigation is set to 25% width. If you remove the margin, the sidenav will overlay/sit on top of this div.</p>
  <p>Also notice that we have set overflow:auto to sidenav. This will add a scrollbar when the sidenav is too long (for example if it has over 50 links inside of it).</p>
  <p>Some text..</p>
  <p>Some text..</p>
  <p>Some text..</p>
  <p>Some text..</p>
  <p>Some text..</p>
  <p>Some text..</p>
  <p>Some text..</p>
  
</div>
</body>
</html>