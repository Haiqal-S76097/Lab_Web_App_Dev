<%-- 
    Document   : processRegistration
    Created on : 14 Apr 2026, 3:05:40 PM
    Author     : MRPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp"%>

<%
String name = request.getParameter("name");
String matric = request.getParameter("matric");
String club = request.getParameter("club");
%>

<h2>Registration Details</h2>

<p>Name: <%= name %></p>
<p>Matric: <%= matric %></p>
<p>Club: <%= club %></p>

<%@include file="footer.jsp"%>