<%-- 
    Document   : registerMarathon
    Created on : 12 May 2026, 4:08:54 PM
    Author     : MRPC
--%>

<!DOCTYPE html>
<html>
<head>
    <title>Marathon Registration</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

<div class="container">

<h1>Marathon Registration Form</h1>

<form action="processMarathon.jsp" method="post">

    <label>Full Name</label>
    <input type="text" name="fullname" required>

    <label>IC Number</label>
    <input type="text" name="icno" required>

    <label>Category</label>
    <select name="category">
        <option>5 KM</option>
        <option>10 KM</option>
        <option>21 KM</option>
    </select>

    <button type="submit">Register</button>

</form>

</div>

</body>
</html>
