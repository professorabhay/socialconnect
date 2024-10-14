<%@page import="com.socialconnect.connection.DbCon"%>
<%@page import="java.util.*"%>
<%@page import="com.socialconnect.model.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
	User auth = (User) request.getSession().getAttribute("auth");
	if (auth != null) {
		response.sendRedirect("index.jsp");
	}
	ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
	if (cart_list != null) {
		request.setAttribute("cart_list", cart_list);
	}
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SocialConnect</title>
<link rel="stylesheet" href="style.css">
<%@include file="includes/header.jsp" %>
</head>
<body class='' style='background-color: #408080;'>
<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">User Login</div>
			<div class="card-body">
				<form action="user-login" method="post">
					<div class="form-group">
						<label>Email address</label> 
						<input type="email" name="login-email" class="form-control" placeholder="Enter email">
					</div>
					<div class="form-group">
						<label>Password</label> 
						<input type="password" name="login-password" class="form-control" placeholder="Password">
					</div>
					<div class="text-center mt-4">
						<button type="submit" class="btn btn-primary">Login</button>
					</div>
				</form>
				<p style="margin-top: 20px"><a href="index.jsp">Back to Home</a></p>
			</div>
		</div>
	</div>

</body>
<%@include file="includes/footer.jsp" %>
</html>