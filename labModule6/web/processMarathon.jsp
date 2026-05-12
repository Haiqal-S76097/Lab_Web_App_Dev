<%-- 
    Document   : processMarathon
    Created on : 12 May 2026, 4:09:27 PM
    Author     : MRPC
--%>

<%@page import="lab6.com.*"%>

<jsp:useBean id="m" class="lab6.com.Marathon"/>

<jsp:setProperty name="m" property="*"/>

<!DOCTYPE html>
<html>
<head>
    <title>Process Marathon</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

<div class="container">

<%

MarathonDAO dao = new MarathonDAO();

int result = dao.addMarathon(m);

if(result > 0){

    out.println("<h2>Registration Successful!</h2>");

    out.println("<p>Name: " + m.getFullname() + "</p>");
    out.println("<p>IC Number: " + m.getIcno() + "</p>");
    out.println("<p>Category: " + m.getCategory() + "</p>");

}
else{

    out.println("<h2>Registration Failed!</h2>");

}

%>

</div>

</body>
</html>
