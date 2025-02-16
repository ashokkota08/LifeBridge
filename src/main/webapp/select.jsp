<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
            margin-top: 80px;
        }
        .button {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            margin: 10px;
            border-radius: 4px;
            text-decoration: none;
            cursor: pointer;
        }
        .button:hover {
            background-color: #0056b3;
        }
         #main {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 320px; 
        text-align: center; 
        flex-direction: column;
    }

    .button {
        background-color: #007bff;
        color: white;
        padding: 10px 20px;
        margin: 10px;
        border-radius: 4px;
        text-decoration: none;
        cursor: pointer;
    }

    .button:hover {
        background-color: #0056b3;
    }
    </style>
</head>
<body>
  
    <div id = "main">
    <center>
    <br>
        <h2>Select Your Option!</h2>
        <a href="doctors.jsp" class="button">Doctor Registration</a>
        <a href="findall" class="button">View Doctors</a>
    </center>
	</div>
    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2024 Hospital Management System. All Rights Reserved.</p>
    </div>
</body>
</html>



    
