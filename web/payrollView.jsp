<%-- 
    Document   : payrollView
    Created on : 12 May 2026, 4:25:50 PM
    Author     : MRPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Employee Payroll System</title>

    <style>

        body{
            font-family: Arial;
            background: #f2f2f2;
        }

        .container{
            width: 900px;
            margin: auto;
            margin-top: 40px;
            background: white;
            padding: 20px;
            border-radius: 10px;
        }

        h1{
            text-align: center;
        }

        table{
            width: 100%;
            border-collapse: collapse;
        }

        table, th, td{
            border: 1px solid black;
        }

        th{
            background: #007bff;
            color: white;
        }

        th, td{
            padding: 10px;
            text-align: center;
        }

    </style>

</head>

<body>

<div class="container">

<h1>Employee Payroll Display System</h1>

<table>

    <tr>
        <th>Employee ID</th>
        <th>Name</th>
        <th>Department</th>
        <th>Basic Salary (RM)</th>
        <th>Status</th>
    </tr>

    <c:forEach var="emp" items="${employeeList}">

        <tr>

            <td>${emp.empId}</td>
            <td>${emp.name}</td>
            <td>${emp.department}</td>
            <td>${emp.basicSalary}</td>

            <td>

                <c:choose>

                    <c:when test="${emp.basicSalary >= 3000}">
                        Senior
                    </c:when>

                    <c:otherwise>
                        Junior
                    </c:otherwise>

                </c:choose>

            </td>

        </tr>

    </c:forEach>

</table>

</div>

</body>
</html>