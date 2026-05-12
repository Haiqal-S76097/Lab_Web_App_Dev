<%-- 
    Document   : insertAuthor
    Created on : 12 May 2026, 4:00:30 PM
    Author     : MRPC
--%>

<!DOCTYPE html>
<html>
<head>
    <title>Insert Author</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
<h1>Author Registration</h1>

<form action="processAuthor.jsp" method="post">

<label>Author No</label>
<input type="text" name="authno" required>

<label>Name</label>
<input type="text" name="name" required>

<label>Address</label>
<input type="text" name="address">

<label>City</label>
<input type="text" name="city">

<label>State</label>
<input type="text" name="state">

<label>Zip</label>
<input type="text" name="zip">

<button type="submit">Submit</button>
<button type="reset">Cancel</button>

</form>
</div>
</body>
</html>
