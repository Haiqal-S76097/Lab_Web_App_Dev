<%-- 
    Document   : populateArray
    Created on : 14 Apr 2026, 2:43:16 PM
    Author     : MRPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Array Table</title>
</head>
<body>

<h2>Sales Data</h2>

<%
int[][] sales = {
    {2500, 2100, 2200},
    {2000, 1900, 2400},
    {1800, 2200, 2450}
};
%>

<table border="1">
<tr>
    <th>Salesman</th>
    <th>Jan</th>
    <th>Feb</th>
    <th>Mar</th>
</tr>

<%
for(int i=0; i<sales.length; i++){
%>
<tr>
    <td>Salesman <%= (i+1) %></td>
    <td><%= sales[i][0] %></td>
    <td><%= sales[i][1] %></td>
    <td><%= sales[i][2] %></td>
</tr>
<%
}
%>

</table>

</body>
</html>