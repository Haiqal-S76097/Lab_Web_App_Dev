<%-- 
    Document   : processCurrency
    Created on : 21 Apr 2026, 2:41:33 PM
    Author     : MRPC
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
final double USD = 0.25;
final double EURO = 0.21;
final double JPY = 40;
final double SGD = 0.32;

private double calculateRate(String currency, int amount) {
    double result = 0;
    if (currency.equals("1")) result = amount * USD;
    else if (currency.equals("2")) result = amount * EURO;
    else if (currency.equals("3")) result = amount * JPY;
    else result = amount * SGD;
    return result;
}
%>

<%
String currencyType = request.getParameter("currencyType");
int amount = Integer.parseInt(request.getParameter("amount"));

double total = calculateRate(currencyType, amount);

String currencyName = "";
if (currencyType.equals("1")) currencyName = "USD";
else if (currencyType.equals("2")) currencyName = "EURO";
else if (currencyType.equals("3")) currencyName = "JPY";
else currencyName = "SGD";
%>

<h2>Result</h2>
<p>RM <%= amount %></p>
<p>Converted to <%= currencyName %>: <%= String.format("%.2f", total) %></p>
<link rel="stylesheet" href="style.css">

<div class="container">
<div class="card">

<h2>Conversion Result</h2>

<div class="result">
<p>RM <%= amount %></p>
<p><%= currencyName %>: <%= String.format("%.2f", total) %></p>
</div>

</div>
</div>