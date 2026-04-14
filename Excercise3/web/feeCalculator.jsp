<%-- 
    Document   : feeCalculator
    Created on : 14 Apr 2026, 3:06:17 PM
    Author     : MRPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp"%>

<form method="post">
    Number of Activities: 
    <input type="text" name="activities"><br><br>
    <input type="submit" value="Calculate">
</form>

<%
String act = request.getParameter("activities");

if(act != null){
    int activities = Integer.parseInt(act);
    double total = activities * 10.0;
%>

<h3>Total Fee: RM <%= String.format("%.2f", total) %></h3>

<%
}
%>

<%@include file="footer.jsp"%>