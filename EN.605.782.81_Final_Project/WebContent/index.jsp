<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Login page code used from example https://colorlib.com/wp/html5-and-css3-login-forms/ -->
<!-- License included -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="styles/login.css" type="text/css"/>

</head>
<body>
  <div class="form">
      
	<ul class="tab-group">
		<li class="tab active"><a href="http://localhost:8080/ClassProject/index.jsp">Log In</a></li>
		<li class="tab"><a href="http://localhost:8080/ClassProject/register.jsp">Sign Up</a></li>
	</ul>
      
      <div class="tab-content">
         <div id="login">   
          <h1>Welcome Back!</h1>
          
          <form action="/" method="post">
          
            <div class="field-wrap">
            <input type="email"required placeholder="Email*"/>
          </div>
          
          <div class="field-wrap">
            <input type="password" placeholder="Password"/>
          </div>
                    
          <button class="button button-block"/>Log In</button>
          
          </form>

        </div>
      </div><!-- tab-content -->
      
</div>
</body>
</html>