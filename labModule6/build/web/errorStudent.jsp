<%-- 
    Document   : errorStudent
    Created on : 12 May 2026, 4:03:18 PM
    Author     : MRPC
--%>

<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
    <title>Error Page</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">

<h1>Error Occurred</h1>

<%= exception.getMessage() %>

</div>
</body>
</html>
