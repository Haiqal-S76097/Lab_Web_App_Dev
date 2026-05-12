<%-- 
    Document   : processStudent
    Created on : 12 May 2026, 4:02:51 PM
    Author     : MRPC
--%>

<%@ page errorPage="errorStudent.jsp" %>
<%@ page import="java.sql.*" %>

<jsp:useBean id="student" class="lab6.com.Student" scope="request"/>
<jsp:setProperty name="student" property="*"/>

<!DOCTYPE html>
<html>
<head>
    <title>Process Student</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">

<%
Class.forName("com.mysql.cj.jdbc.Driver");

Connection conn = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/CSA3023",
        "root",
        ""
);

String sql = "INSERT INTO Student VALUES(?,?,?,?)";
PreparedStatement ps = conn.prepareStatement(sql);

ps.setString(1, student.getStuid());
ps.setString(2, student.getStuname());
ps.setString(3, student.getStuprogram());
ps.setString(4, student.getAddress());

int result = ps.executeUpdate();

if(result > 0){
    out.println("<h2>Student inserted successfully!</h2>");
}

conn.close();
%>

</div>
</body>
</html>
