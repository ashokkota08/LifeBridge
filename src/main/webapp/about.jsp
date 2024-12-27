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
        }.content {
            display: flex;
            flex-wrap: wrap;
            gap: 2rem;
            justify-content: space-between;
        }
        .content .text-section {
            flex: 1 1 60%;
        }
        .content .text-section h2 {
            font-size: 1.8rem;
            color: #333;
            margin-bottom: 1rem;
        }
        .content .text-section p {
            font-size: 1.1rem;
            color: #555;
            line-height: 1.8;
        }
        .content .info-section {
            flex: 1 1 35%;
        }
        .info-box {
            display: flex;
            align-items: flex-start;
            margin-bottom: 1.5rem;
        }
        .info-box span {
            background-color: #007bff;
            color: white;
            border-radius: 50%;
            width: 25px;
            height: 25px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.2rem;
            margin-right: 1rem;
        }
        .info-box div {
            flex: 1;
        }
        .info-box h3 {
            margin: 0;
            font-size: 1.2rem;
            color: #333;
        }
        .info-box p {
            margin: 0.5rem 0 0;
            font-size: 1rem;
            color: #555;
        }
        
        .footer {
            margin-top: 50px;
        }
    </style>
</head>
<body>
    <!-- Header -->
   

    <!-- Main Content -->
    <center>
    <br>
      
        <div class="content">
            <div class="text-section">
                <h2>Providing Excellence in Healthcare</h2>
                <p>
                    At our clinic, we strive to provide top-notch healthcare services with a focus on patient care and satisfaction. Our state-of-the-art facilities and experienced medical professionals are here to ensure you receive the best treatment possible.
                </p>
                <p>
                    With years of expertise in the healthcare industry, we are committed to continuous improvement and innovation to meet the evolving needs of our patients.
                </p>
            </div>
            <div class="info-section">
                <div class="info-box">
                    <span>&#9679;</span>
                    <div>
                        <h3>Everything You Need Under One Roof</h3>
                        <p>From consultations to treatments, we offer comprehensive care in one place.</p>
                    </div>
                </div>
                <div class="info-box">
                    <span>&#9679;</span>
                    <div>
                        <h3>Our Patient-Focused Approach</h3>
                        <p>Your well-being is our priority. We tailor treatments to suit your unique needs.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </center>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2024 Hospital Management System. All Rights Reserved.</p>
    </div>
</body>
</html>


    



