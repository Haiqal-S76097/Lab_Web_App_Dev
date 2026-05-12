<%-- 
    Document   : insertStudent
    Created on : 12 May 2026, 4:02:25 PM
    Author     : MRPC
--%>

<!DOCTYPE html>
<html>
<head>
    <title>Insert Student</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">

<h1>Student Registration</h1>

<form action="processStudent.jsp" method="post">

<label>Student ID</label>
<input type="text" name="stuid" placeholder="UK12345" required>

<label>Student Name</label>
<input type="text" name="stuname" required>

<label>Program</label>
<select name="stuprogram">
    <option>BSc with IM</option>
    <option>BSc Soft. Eng.</option>
    <option>BSc in Robotics</option>
</select>

<label>Address</label>
<input type="text" name="address">

<button type="submit">Submit</button>
<button type="reset">Cancel</button>

</form>

</div>
</body>
</html>
