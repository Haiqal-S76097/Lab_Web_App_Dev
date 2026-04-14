<%-- 
    Document   : memberDirectory
    Created on : 14 Apr 2026, 3:06:50 PM
    Author     : MRPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<%@include file="header.jsp"%>

<h2>Club Members</h2>

<%
ArrayList<String> members = new ArrayList<>();

members.add("Ali");
members.add("Ahmad");
members.add("Siti");
members.add("Mei Ling");
members.add("Raj");
%>

<table border="1">
<tr><th>Name</th></tr>

<%
for(String m : members){
%>
<tr><td><%= m %></td></tr>
<%
}
%>

</table>

<%@include file="footer.jsp"%>
