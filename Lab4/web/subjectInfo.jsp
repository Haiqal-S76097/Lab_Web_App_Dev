<%-- 
    Document   : subjectInfo
    Created on : 21 Apr 2026, 2:50:34 PM
    Author     : MRPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Subject Information</title>
 <link rel="stylesheet" href="style.css">
</head>
<body>
<h1>Subject Information</h1>
</body>
</html>

<p>Code: <%= request.getParameter("code") %></p>
<p>Subject: <%= request.getParameter("subject") %></p>
<p>Credit: <%= request.getParameter("credit") %></p>
