<%-- 
    Document   : processUser
    Created on : 12 May 2026, 4:17:37 PM
    Author     : MRPC
--%>

<%@page import="java.sql.*"%>

<%

try{

    Class.forName("com.mysql.cj.jdbc.Driver");

    Connection conn = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/CSA3023",
            "root",
            ""
    );

    String sql = "INSERT INTO userprofile VALUES(?,?,?,?)";

    PreparedStatement ps = conn.prepareStatement(sql);

    ps.setString(1, request.getParameter("username"));
    ps.setString(2, request.getParameter("password"));
    ps.setString(3, request.getParameter("firstname"));
    ps.setString(4, request.getParameter("lastname"));

    int result = ps.executeUpdate();

    if(result > 0){

        response.sendRedirect("login.jsp");

    }

    conn.close();

}
catch(Exception e){

    out.println(e);

}

%>
