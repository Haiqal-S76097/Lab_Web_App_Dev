<%-- 
    Document   : main
    Created on : 12 May 2026, 4:18:40 PM
    Author     : MRPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Main Page</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

<div class="container">

<h1>Login Successful</h1>

<h3>Username: <%= session.getAttribute("username") %></h3>

<h3>First Name: <%= session.getAttribute("firstname") %></h3>

<h3>Last Name: <%= session.getAttribute("lastname") %></h3>

</div>

</body>
</html>