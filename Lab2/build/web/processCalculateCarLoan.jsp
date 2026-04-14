<%-- 
    Document   : processCalculateCarLoan
    Created on : 14 Apr 2026, 2:50:14 PM
    Author     : MRPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Loan Result</title>
</head>
<body>

<%
double amount = Double.parseDouble(request.getParameter("amount"));
int period = Integer.parseInt(request.getParameter("period"));

double interestRate = 0.05; // 5%
double total = amount + (amount * interestRate * period);
%>

<h2>Loan Result</h2>

<p>Loan Amount: RM <%= amount %></p>
<p>Period: <%= period %> years</p>
<p>Total Payment: RM <%= String.format("%.2f", total) %></p>

</body>
</html>