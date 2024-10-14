<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<title>SocialConnect</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<%
	HttpSession sessions = request.getSession(false);
	if (sessions != null && sessions.getAttribute("username") != null) {
    String username = (String) sessions.getAttribute("username");

%>
    <div class="container">
        <h1>Welcome to SocialConnect, <%=username%>!</h1>
		<a href="index.html">LOGOUT</a>
    </div>
<%
    } else {
    	response.sendRedirect("login.jsp");
    }
%>
</body>
</html>