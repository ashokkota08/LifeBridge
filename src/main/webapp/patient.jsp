<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        center {
            margin-top: 50px;
        }
        table {
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
            margin-bottom: 5px;
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
    </style>
</head>
<body>
    <center>
        <h1>Patient Registration Form</h1>
        <table>
            <form action="savepatient" method="post">
                <tr>
                    <td><label for="name">Name</label></td>
                    <td><input type="text" id="name" name="name" ></td>
                </tr>
                <tr>
                    <td><label for="age">Age</label></td>
                    <td><input type="number" id="age" name="age" ></td>
                </tr>
                <tr>
                    <td><label for="gender">Gender</label></td>
                    <td><select name="gender">
                    <option>---select---</option>
                    	<option value="male">Male</option>
                    	<option value="female">Female</option>
                    	</select></td>
                </tr>
                <tr>
                    <td><label for="address">Address</label></td>
                    <td><input type="text" id="address" name="address" ></td>
                </tr>
                <tr>
                    <td><label for="contact">Contact</label></td>
                    <td><input type="text" id="contact" name="contact" ></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <input type="submit" value="Submit">
                    </td>
                </tr>
            </form>
        </table>
    </center>
</body>
</html>
