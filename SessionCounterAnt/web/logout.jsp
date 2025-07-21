<%-- 
    Document   : logout
    Created on : Jul 21, 2025, 9:32:30 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.invalidate(); // Hủy session hiện tại
    response.sendRedirect("sessionCounter.jsp"); // Chuyển về trang hiển thị số session
%>

