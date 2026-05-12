<%-- 
    Document   : doLogin
    Created on : 12 May 2026, 4:18:20 PM
    Author     : MRPC
--%>

<%@page import="java.sql.*"%>

<%

String username = request.getParameter("username");
String password = request.getParameter("password");

try{

    Class.forName("com.mysql.cj.jdbc.Driver");

    Connection conn = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/CSA3023",
            "root",
            ""
    );

    String sql = "SELECT * FROM userprofile WHERE username=? AND password=?";

    PreparedStatement ps = conn.prepareStatement(sql);

    ps.setString(1, username);
    ps.setString(2, password);

    ResultSet rs = ps.executeQuery();

    if(rs.next()){

        session.setAttribute("username", rs.getString("username"));
        session.setAttribute("firstname", rs.getString("firstname"));
        session.setAttribute("lastname", rs.getString("lastname"));

        response.sendRedirect("main.jsp");

    }
    else{

        response.sendRedirect("login.jsp?error=1");

    }

    conn.close();

}
catch(Exception e){

    out.println(e);

}

%>