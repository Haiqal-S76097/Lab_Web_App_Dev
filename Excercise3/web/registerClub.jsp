<%-- 
    Document   : registerClub
    Created on : 14 Apr 2026, 3:04:59 PM
    Author     : MRPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp"%>

<form action="processRegistration.jsp" method="post">
    Name: <input type="text" name="name"><br><br>
    Matric No: <input type="text" name="matric"><br><br>

    Club:
    <select name="club">
        <option>Robotics</option>
        <option>Sports</option>
        <option>Art</option>
    </select><br><br>

    <input type="submit" value="Register">
</form>

<%@include file="footer.jsp"%>
