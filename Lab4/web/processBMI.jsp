<%-- 
    Document   : processBMI
    Created on : 21 Apr 2026, 3:36:14 PM
    Author     : MRPC
--%>

<%
double weight = Double.parseDouble(request.getParameter("weight"));
double height = Double.parseDouble(request.getParameter("height"));

double bmi = weight / (height * height);

String category = "";
if (bmi < 18.5) category = "Underweight";
else if (bmi <= 25) category = "Normal";
else category = "Overweight";
%>

<jsp:forward page="resultBMI.jsp">
    <jsp:param name="bmi" value="<%= bmi %>" />
    <jsp:param name="category" value="<%= category %>" />
</jsp:forward>