<%-- 
    Document   : jspParameter
    Created on : 21 Apr 2026, 2:48:57 PM
    Author     : MRPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Using JSP Standard Action</title>
 <link rel="stylesheet" href="style.css">
</head>
<body>
<h1>Using jsp:include and jsp:param to display information</h1>
</body>
</html>

<%
String sCode = "CSE3023";
String sSubject = "Web-based Application Development";
String sCredit = "3(2+1)";
%>
<jsp:include page="subjectInfo.jsp" flush="true">
<jsp:param name="code" value="<%= sCode %>" />
<jsp:param name="subject" value="<%= sSubject %>" />
<jsp:param name="credit" value="<%= sCredit %>" />
</jsp:include>
