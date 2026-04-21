<%-- 
    Document   : bmiCalculator
    Created on : 21 Apr 2026, 3:35:31 PM
    Author     : MRPC
--%>

<%@ include file="header.jsp" %>

<form action="processBMI.jsp" method="post">
<link rel="stylesheet" href="style.css">
Weight (kg): <input type="number" step="0.1" name="weight"><br><br>
Height (m): <input type="number" step="0.01" name="height"><br><br>

<input type="submit" value="Calculate">
</form>

<%@ include file="footer.jsp" %>