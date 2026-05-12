<%-- 
    Document   : login
    Created on : 12 May 2026, 4:17:56 PM
    Author     : MRPC
--%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

<div class="container">

<h1>User Login</h1>

<form action="doLogin.jsp" method="post">

    <label>Username</label>
    <input type="text" name="username" required>

    <label>Password</label>
    <input type="password" name="password" required>

    <button type="submit">Login</button>

</form>

<%

String error = request.getParameter("error");

if(error != null){

    out.println("<p style='color:red'>Invalid username or password!</p>");

}

%>

</div>

</body>
</html>
