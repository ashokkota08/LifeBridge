<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doctor Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        .header, .footer {
            background: rgb(49, 130, 206);
            background: linear-gradient(90deg, rgba(49, 130, 206, 1) 0%, rgba(56, 178, 172, 1) 100%);
            color: white;
            text-align: center;
            padding: 15px 0;
        }
        center {
            margin-top: 20px;
        }
        table {
        	margin-top:40px;
            border: 1px solid #ddd;
            border-collapse: collapse;
            width: 50%;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        td {
            padding: 10px;
        }
        .form-group label {
            display: block;
            margin-bottom: 1px;
        }
        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .footer {
            margin-top: 190px;
        } table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px 0;
            font-size: 18px;
            text-align: left;
            border-radius: 10px; 
            overflow: hidden;
        }
        th, td {
            padding: 12px;
            border: 1px solid #ddd;
        }
        th {
            background-color: #f4f4f4;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>
    
    <center>
    <br>
        <h1>Doctors List</h1>
         <table>
            <tr>
            	<th>Id</th>
                <th>Name</th>
                <th>Specialization</th>
                <th>Contact</th>
                
                <th>Delete</th>
            </tr>
            <c:forEach items="${list}" var="doctors">
                <tr>
                	<td>${doctors.getId()}</td>
                    <td>${doctors.getName()}</td>
                    <td>${doctors.getSpecialization()}</td>
                    <td>${doctors.getContact()}</td>
                   
 				   <td><a href='delete?id=${doctors.getId()}'>Delete</a></td>
 				   
                </tr>
            </c:forEach>
        </table>
    </center>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2024 Hospital Management System. All Rights Reserved.</p>
    </div>
</body>
</html>


    
