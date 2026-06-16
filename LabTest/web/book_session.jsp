<%-- 
    Document   : book_session
    Created on : 16 Jun 2026, 2:17:42 PM
    Author     : MRPC
--%>
<%@ include file="header.html" %>
<link rel="stylesheet" href="style.css">
<h2>Book Session</h2>

<form method="POST"
      action="BookSessionServlet">

    Student Name:
    <input type="text"
           name="student_name">
    <br><br>

    Branch Location:
    <select name="branch_location">

        <option>Terengganu</option>
        <option>Kelantan</option>
        <option>Pahang</option>

    </select>

    <br><br>

    Lesson Type:
    <select name="lesson_type">

        <option>Manual Car</option>
        <option>Automatic Car</option>
        <option>Motorcycle</option>

    </select>

    <br><br>

    <input type="submit"
           value="Book Session">

</form>

<%@ include file="footer.jsp" %>