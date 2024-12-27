<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Treatments</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
        }
        header {
            background: rgb(49, 130, 206);
            background: linear-gradient(90deg, rgba(49, 130, 206, 1) 0%, rgba(56, 178, 172, 1) 100%);
            color: white;
            padding: 1rem 2rem;
            text-align: center;
        }
        header h1 {
            color: white; /* Explicitly set the header text color to white */
            margin: 0;
        }
        footer {
            background: rgb(49, 130, 206);
            background: linear-gradient(90deg, rgba(49, 130, 206, 1) 0%, rgba(56, 178, 172, 1) 100%);
            color: white;
            text-align: center;
            padding: 1rem;
            position: relative;
            bottom: 0;
            width: 100%;
        }
        .container {
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #007bff;
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
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <h1>Available Treatments</h1>
    </header>

    <!-- Main Content -->
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
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Our Hospital. All rights reserved.</p>
    </footer>
</body>
</html>

