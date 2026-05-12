<%-- 
    Document   : processAuthor
    Created on : 12 May 2026, 4:01:04 PM
    Author     : MRPC
--%>

<%@page import="java.sql.*"%>
<jsp:useBean id="author" class="lab6.com.Author" scope="request"/>
<jsp:setProperty name="author" property="*"/>

<!DOCTYPE html>
<html>
<head>
    <title>Process Author</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">

<%
try {
    Class.forName("com.mysql.cj.jdbc.Driver");

    Connection conn = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/CSA3023",
            "root",
            ""
    );

    String sql = "INSERT INTO Author VALUES(?,?,?,?,?,?)";

    PreparedStatement ps = conn.prepareStatement(sql);

    ps.setString(1, author.getAuthno());
    ps.setString(2, author.getName());
    ps.setString(3, author.getAddress());
    ps.setString(4, author.getCity());
    ps.setString(5, author.getState());
    ps.setString(6, author.getZip());

    int result = ps.executeUpdate();

    if(result > 0){
        out.println("<h2>Author inserted successfully!</h2>");
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