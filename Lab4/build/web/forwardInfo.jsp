<%-- 
    Document   : forwardInfo
    Created on : 21 Apr 2026, 3:04:20 PM
    Author     : MRPC
--%>

<%
String name = request.getParameter("uname");
String email = request.getParameter("email");
String nationality = request.getParameter("nationality");
String background = request.getParameter("background");
%>

<p>Name: <%= name %></p>
<p>Email: <%= email %></p>
<p>Nationality: <%= nationality %></p>
<p>Background: <%= background %></p>
