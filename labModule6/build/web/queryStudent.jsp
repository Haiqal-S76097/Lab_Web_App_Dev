<%-- 
    Document   : queryStudent
    Created on : 12 May 2026, 4:04:01 PM
    Author     : MRPC
--%>

<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
    <title>Query Student</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<div class="container">

<h1>Student Records</h1>

<table class="table">

<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Program</th>
    <th>Address</th>
</tr>

<%
try {

    Class.forName("com.mysql.cj.jdbc.Driver");

    Connection conn = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/CSA3023",
            "root",
            ""
    );

    Statement stmt = conn.createStatement();

    ResultSet rs = stmt.executeQuery("SELECT * FROM Student");

    while(rs.next()){
%>

<tr>
    <td><%= rs.getString("stuid") %></td>
    <td><%= rs.getString("stuname") %></td>
    <td><%= rs.getString("stuprogram") %></td>
    <td><%= rs.getString("address") %></td>
</tr>

<%
    }

    conn.close();

}
catch(Exception e){

    out.println(e);

}
%>

</table>

</div>

</body>
</html>