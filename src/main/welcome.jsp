<%@ page session="true" %>
<%
    String username = (String) session.getAttribute("username");
    if(username == null) {
        response.sendRedirect("login.html");
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
    <h2>Welcome, <%= username %>!</h2>
    <a href="LogoutServlet">Logout</a>
</body>
</html>
