<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Naviagtion code used from examples on https://www.w3schools.com/css/css_navbar.asp -->
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="styles/horizontalMenu.css">
	<title>Class Project</title>

</head>
<body>

	<ul>
		<li class="dropdown">
			<a href="TestServlet?action=navigation&page=org&option=About+Us" class="dropbtn">Organization</a>
			<div class="dropdown-content">
				<a href="TestServlet?action=navigation&page=org&option=About+Us">About Us</a>
				<a href="TestServlet?action=navigation&page=org&option=AdoptionNews">Adoption News</a>
				<a href="TestServlet?action=navigation&page=org&option=ContactUs">Contact Us</a>
			</div>
		</li>
		
		<li class="dropdown">
			<a href="TestServlet?action=navigation&page=adopt&option=Dogs" class="dropbtn">Adoptables</a>
			<div class="dropdown-content">
				<a href="TestServlet?action=navigation&page=adopt&option=Dogs">Dogs</a>
			</div>
		</li>
		  
		<li class="dropdown">
			<a href="TestServlet?action=navigation&page=order&option=AllItems" class="dropbtn">Order Supplies</a>
			<div class="dropdown-content">
				<a href="TestServlet?action=navigation&page=order&option=AllItems">All Items</a>
				<a href="TestServlet?action=navigation&page=order&option=SuggestedItems">Suggested Items</a>
				<a href="TestServlet?action=navigation&page=order&option=Policy">Policy</a>
			</div>
		</li>
		  
		<li class="dropdown side">
			<a href="TestServlet?action=navigation&page=membership&option=LogInOut" class="dropbtn">Membership</a>
			<div class="dropdown-content">
				<a href="TestServlet?action=navigation&page=membership&option=LogInOut">Log In/Out</a>
				<a href="TestServlet?action=navigation&page=membership&option=MyProfile">My Profile</a>
				<a href="TestServlet?action=navigation&page=membership&option=OrderHistory">Order History</a>
				<a href="TestServlet?action=navigation&page=membership&option=CancelMembership">Cancel Membership</a>
			</div>
		</li>
			
			
		<li class="dropdown side">
			<a href="TestServlet?action=navigation&page=cart&option=ViewCart" class="dropbtn">Shopping Cart</a>
			<div class="dropdown-content">
				<a href="TestServlet?action=navigation&page=cart&option=ViewCart">View Cart</a>
				<a href="TestServlet?action=navigation&page=cart&option=Checkout">Checkout</a>
			</div>
		</li>
	</ul>
</body>
</html>