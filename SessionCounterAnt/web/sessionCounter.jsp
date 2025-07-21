<%-- 
    Document   : sessionCounter
    Created on : Jul 21, 2025, 9:31:11 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.example.sessioncounter.SessionCounterListener" %>
<!DOCTYPE html>
<html>
<head>
    <title>Session Counter</title>
</head>
<body>
    <h2>Số phiên đang hoạt động: <%= SessionCounterListener.getActiveSessions() %></h2>
    <a href="logout.jsp">Logout</a>
</body>
</html>
