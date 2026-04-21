<%-- 
    Document   : healthInfo
    Created on : 21 Apr 2026, 3:41:29 PM
    Author     : MRPC
--%>

<%@page import="java.util.ArrayList"%>
<%@ include file="header.jsp" %>

<%
ArrayList<String> list = new ArrayList<>();
list.add("Underweight");
list.add("Normal");
list.add("Overweight");
%>

<h2>Health Info</h2>
 <link rel="stylesheet" href="style.css">
<table border="1">
<%
for(String s : list){
%>
<tr><td><%= s %></td></tr>
<%
}
%>
</table>

<%@ include file="footer.jsp" %>