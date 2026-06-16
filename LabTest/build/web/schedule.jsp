<%-- 
    Document   : schedule
    Created on : 16 Jun 2026, 2:18:00 PM
    Author     : MRPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.drivesmart.bean.SessionBean" %>
<%@ include file="header.html" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Schedule</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <h2>Training Schedule</h2>

        <table border="1">

            <tr>
                <th>ID</th>
                <th>Student</th>
                <th>Branch</th>
                <th>Lesson Type</th>
                <th>Status</th>
            </tr>

                <%
                List<SessionBean> list =(List<SessionBean>)request.getAttribute("sessionList");

                for(SessionBean s : list){
                %>

                <tr>
                    <td><%= s.getSessionId() %></td>
                    <td><%= s.getStudentName() %></td>
                    <td><%= s.getBranchLocation() %></td>
                    <td><%= s.getLessonType() %></td>
                    <td><%= s.getStatus() %></td>
                </tr>

                <%
                 }
                %>

        </table>

    </body>
</html>


<%@ include file="footer.jsp" %>