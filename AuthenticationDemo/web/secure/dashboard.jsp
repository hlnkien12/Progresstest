<%-- 
    Document   : dashboard
    Created on : Jul 21, 2025, 9:23:38 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
</head>
<body>
    <h2>Welcome, <%= session.getAttribute("loggedinUser") %>!</h2>
    <p>You have accessed a protected page.</p>
    <a href="<%= request.getContextPath() %>/logout">Logout</a>
</body>
</html>