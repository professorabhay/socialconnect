<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<body>
<%
	HttpSession currentSession = request.getSession(false);

		if(currentSession != null){
			currentSession.invalidate();
		}
    	response.sendRedirect("index.html");
%>
</body>
</html>