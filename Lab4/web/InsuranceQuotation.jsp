<%-- 
    Document   : InsuranceQuotation
    Created on : 21 Apr 2026, 3:17:27 PM
    Author     : MRPC
--%>

<!DOCTYPE html>
<html>
<body>
<link rel="stylesheet" href="style.css">
<h2>Insurance Form</h2>

<form action="processInsuranceQuo.jsp" method="post">
IC: <input type="text" name="icno"><br><br>
Name: <input type="text" name="name"><br><br>

Coverage:
<select name="coverage">
    <option value="comprehensive">Comprehensive</option>
    <option value="third">Third Party</option>
</select><br><br>

Price: <input type="number" name="price"><br><br>
NCD (0.1 = 10%): <input type="number" step="0.01" name="ncd"><br><br>

<input type="submit" value="Calculate">
</form>
</body>
</html>