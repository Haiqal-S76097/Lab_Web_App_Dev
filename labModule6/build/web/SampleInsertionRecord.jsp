<%-- 
    Document   : SampleInsertionRecord
    Created on : 12 May 2026, 3:58:27 PM
    Author     : MRPC
--%>

<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>Task 1</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
<h1>Lab 6 - Task 1</h1>

<%
Connection conn = null;
PreparedStatement ps = null;

try {
    Class.forName("com.mysql.cj.jdbc.Driver");

    conn = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/CSA3023",
        "root",
        ""
    );

    String sql = "INSERT INTO FirstTable VALUES(?)";
    ps = conn.prepareStatement(sql);
    ps.setString(1, "Welcome to access MySQL database with JSP...!");

    int result = ps.executeUpdate();

    if(result > 0){
        out.println("<h3>Record inserted successfully!</h3>");
    }

    conn.close();
}
catch(Exception e){
    out.println(e);
}
%>

</div>
</body>
</html>