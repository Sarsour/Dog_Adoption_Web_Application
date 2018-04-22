<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="test.VerticalPageNavigation" %>
<!-- Naviagtion code used from examples on https://www.w3schools.com/css/css_navbar.asp -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="styles/verticalMenu.css" type="text/css"/>
</head>
</head>
<body>

<ul class="side">
	<c:forEach items="${verticalPageNavigation.navOptions}" var="opts">
		<c:url value="TestServlet" var="url">
		  <c:param name="action" value="navigation"/>
  		  <c:param name="page" value="${verticalPageNavigation.page}"/>
    		  <c:param name="option" value="${opts}"/>
		</c:url>
		<li><a class="side" href="${url}">${opts}</a></li>
	</c:forEach>
</ul>



</body>
</html>
