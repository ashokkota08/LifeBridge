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
        .treatment-list {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            padding: 20px 0;
        }
        .treatment-item {
            background: #e9ecef;
            padding: 15px;
            border-radius: 8px;
            text-align: center;
            transition: 0.3s;
        }
        .treatment-item:hover {
            background: #d1e7fd;
            transform: scale(1.05);
        }
        .treatment-item h3 {
            margin: 10px 0;
            color: #495057;
        }
        .treatment-item p {
            color: #6c757d;
        }
        .footer {
            margin-top: 30px;
        }
    </style>
</head>
<body>
    
   

    <center>
    <br>
        <h1>Available Treatments</h1>
       
        <div class="container">
        <div class="treatment-list">
            <div class="treatment-item">
                <h3>General Checkup</h3>
                <p>Comprehensive health assessment for all ages.</p>
            </div>
            <div class="treatment-item">
                <h3>Dental Cleaning</h3>
                <p>Professional teeth cleaning and oral hygiene.</p>
            </div>
            <div class="treatment-item">
                <h3>Root Canal</h3>
                <p>Expert root canal treatments for damaged teeth.</p>
            </div>
            <div class="treatment-item">
                <h3>Physiotherapy</h3>
                <p>Effective physical therapy for pain and recovery.</p>
            </div>
            <div class="treatment-item">
                <h3>Cardiology Consultation</h3>
                <p>Heart health checks and expert advice.</p>
            </div>
            <div class="treatment-item">
                <h3>Dermatology</h3>
                <p>Skin care and Consultation.</p>
            </div>
        </div>
    </div>
    </center>

 
    <div class="footer">
        <p>&copy; 2024 Hospital Management System. All Rights Reserved.</p>
    </div>
</body>
</html>


    
