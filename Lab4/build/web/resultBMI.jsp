<%-- 
    Document   : resultBMI
    Created on : 21 Apr 2026, 3:41:01 PM
    Author     : MRPC
--%>

<%@ include file="header.jsp" %>

<%
double bmi = Double.parseDouble(request.getParameter("bmi"));
String category = request.getParameter("category");
%>

<h2>Result</h2>
 <link rel="stylesheet" href="style.css">
<p>BMI: <%= String.format("%.2f", bmi) %></p>
<p>Category: <%= category %></p>

<%@ include file="footer.jsp" %>