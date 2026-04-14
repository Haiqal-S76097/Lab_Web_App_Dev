<%-- 
    Document   : Calculator
    Created on : 14 Apr 2026, 2:23:53 PM
    Author     : MRPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Calculator</title>
</head>
<body bgcolor="#87CEEB">

<center>
<h2>Basic Calculator</h2>

<form method="get">
    <input type="text" name="operand1" value="" />

    <select name="op">
        <option value="0">+</option>
        <option value="1">-</option>
        <option value="2">*</option>
        <option value="3">/</option>
        <option value="4">%</option>
    </select>

    <input type="text" name="operand2" value="" /><br><br>

    <input type="submit" value="Calculate">
</form>

<%
String num1 = request.getParameter("operand1");
String num2 = request.getParameter("operand2");
String op = request.getParameter("op");

int result = 0;

if (num1 != null && num2 != null && op != null) {
    int n1 = Integer.parseInt(num1);
    int n2 = Integer.parseInt(num2);

    switch(op) {
        case "0": result = n1 + n2; break;
        case "1": result = n1 - n2; break;
        case "2": result = n1 * n2; break;
        case "3": result = n1 / n2; break;
        case "4": result = n1 % n2; break;
    }
%>

<h3>Result: <%= result %></h3>

<%
}
%>

</center>
</body>
</html>
