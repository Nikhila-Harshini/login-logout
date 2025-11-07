<%@ page session="true" contentType="text/html;charset=UTF-8" %>
<%
    String username = (String) session.getAttribute("username");
    if(username == null) {
        response.sendRedirect("login.html");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="UTF-8">
        <title>Welcome</title>
        <link rel="stylesheet" href="css/style.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            /* small inline fallback if CSS fails to load */
            .welcome { font-family: Arial, sans-serif; padding: 20px; }
        </style>
</head>
<body class="bg">
    <div class="container">
        <div class="card">
            <h1 class="title">Welcome, <%= username %>!</h1>
            <form action="LogoutServlet" method="get">
                <button class="btn" type="submit">Logout</button>
            </form>
        </div>
    </div>
</body>
</html>
