<%-- 
    Document   : processCustomer
    Created on : 21 Apr 2026, 2:09:53 PM
    Author     : MRPC
--%>

<%
// Fixed price
final double price = 10.0;
// Retrieve form data
String cust_no = request.getParameter("customerCode");
String cust_type = request.getParameter("customerType");
int quantity = 0;
try {
quantity = Integer.parseInt(request.getParameter("quantity"));
} catch (Exception e) {
quantity = 0;
}

// Business logic
double total = 0;
String message = "";
if (cust_type.equals("1") && quantity > 100) {
message = "You're entitled to 10% discount";
total = quantity * price * 0.9;
} else if (cust_type.equals("2") && quantity > 100) {
message = "You're entitled to 25% discount";
total = quantity * price * 0.75;
} else {
message = "You're not entitled to any discount";
total = quantity * price;
}
// Display customer type
String custTypeDisplay = cust_type.equals("1") ?
"Normal Customer" : "Privilege Customer";
%>

<link rel="stylesheet" href="style.css">
<h2>Result</h2>
<p>Customer Code: <%= cust_no %></p>
<p>Customer Type: <%= custTypeDisplay %></p>
<p>Quantity: <%= quantity %></p>
<p><%= message %></p>
<p>Total: RM <%= total %></p>