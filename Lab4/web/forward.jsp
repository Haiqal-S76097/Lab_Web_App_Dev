<%-- 
    Document   : forward
    Created on : 21 Apr 2026, 3:02:57 PM
    Author     : MRPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Using JSP Standard Action (Forward)</title>
</head>
<body>
<h1>Using jsp:forward to display user information</h1>
</body>
</html>

<jsp:forward page="forwardInfo.jsp">
<jsp:param name="uname" value="afiq haiqal bin samri" />
<jsp:param name="email" value="afiqhaiqal@umt.edu.my" />
<jsp:param name="nationality" value="Malaysia" />
<jsp:param name="background" value="Student" />
</jsp:forward>
