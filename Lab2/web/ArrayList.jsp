<%-- 
    Document   : ArrayList
    Created on : 14 Apr 2026, 2:52:31 PM
    Author     : MRPC
--%>
<%@include file="headerPage.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
    <title>ArrayList Example</title>
</head>
<body>

<h2>Student List</h2>

<%
ArrayList<String> students = new ArrayList<>();

students.add("Mohamad Azam");
students.add("Peter Chong");
students.add("Rahimah Mansor");
students.add("Sri Devi");
students.add("Ng Hue Ween");
students.add("S. Nagarajan");

out.println("<p>Total Students: " + students.size() + "</p>");

for(int i=0; i<students.size(); i++){
    out.println("<p>" + students.get(i) + "</p>");
}
%>

</body>
<%@include file="footerPage.jsp"%>
</html>