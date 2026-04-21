<%-- 
    Document   : processInsuranceQuo
    Created on : 21 Apr 2026, 3:21:50 PM
    Author     : MRPC
--%>
<%
// Retrieve form data
String icno = request.getParameter("icno");
String name = request.getParameter("name");
String coverage = request.getParameter("coverage");
String ncdStr = request.getParameter("ncd");
double price = 0;
double ncd = 0;
try {
price = Double.parseDouble(request.getParameter("price"));
ncd = Double.parseDouble(ncdStr);
} catch (Exception e) {
price = 0;
ncd = 0;
}
// Business Logic
double rate = 0;
String coverageDisplay = "";
if ("comprehensive".equals(coverage)) {
rate = 0.05; // 5%
coverageDisplay = "Comprehensive";
} else {
rate = 0.03; // 3%
coverageDisplay = "Third Party";
}
// Base insurance calculation

double insurance = price * rate;
// Apply NCD discount
double discount = insurance * ncd;
double afterNCD = insurance - discount;
// Add 8% SST
double sst = afterNCD * 0.08;
double finalAmount = afterNCD + sst;
%>


<h2>Insurance Result</h2>
<link rel="stylesheet" href="style.css">
<p>Name: <%= name %></p>
<p>Insurance: RM <%= insurance %></p>
<p>After NCD: RM <%= afterNCD %></p>
<p>SST: RM <%= sst %></p>
<p><b>Final: RM <%= finalAmount %></b></p>
