<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LifeBridge</title>
    <style>
        /* General Styles */
        body {
            margin: 0;
            font-family: sans-serif;
        }

        .container {
            max-width: 960px;
            margin: 0 auto;
            padding: 0 20px;
        }

        header {
            background-color: #f0f0f0;
            padding: 20px 0;
        }

        .logo h1 {
            font-size: 24px;
            margin: 0;
        }

        nav ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: flex-end;
        }

        nav ul li {
            margin-left: 20px;
        }

        nav ul li a {
            text-decoration: none;
            color: #333;
        }

        .book-appointment {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
        }
        .hero h1 {
            font-size: 48px;
            margin: 0;
        }

        .hero p {
            font-size: 18px;
            margin-top: 20px;
        }

        /* Toggle Menu Styles */
        #menu-toggle:checked+#menu {
            display: block;
        }

        #dropdown-toggle:checked+#dropdown {
            display: block;
        }
        

        /* Arrow and Hover Effects */
        a,
        span {
            position: relative;
            text-decoration: none;
            transition: all 0.3s ease;
        }

        a.arrow,
        span.arrow {
            display: flex;
            align-items: center;
            font-weight: 600;
            line-height: 1.5;
        }

        a.arrow .arrow_icon,
        span.arrow .arrow_icon {
            position: relative;
            margin-left: 0.5em;
        }

        a.arrow .arrow_icon svg,
        span.arrow .arrow_icon svg {
            transition: transform 0.3s 0.02s ease;
            margin-right: 1em;
        }

        a.arrow .arrow_icon::before,
        span.arrow .arrow_icon::before {
            content: "";
            display: block;
            position: absolute;
            top: 50%;
            left: 0;
            width: 0;
            height: 2px;
            background: #38b2ac;
            transform: translateY(-50%);
            transition: width 0.3s ease;
        }

        a.arrow:hover .arrow_icon::before,
        span.arrow:hover .arrow_icon::before {
            width: 1em;
        }

        a.arrow:hover .arrow_icon svg,
        span.arrow:hover .arrow_icon svg {
            transform: translateX(0.75em);
        }
        

        /* Background Gradient */
        .bg-blue-teal-gradient {
            background: rgb(49, 130, 206);
            background: linear-gradient(90deg, rgba(49, 130, 206, 1) 0%, rgba(56, 178, 172, 1) 100%);
        }
    </style>
</head>
<body class="bg-blue-teal-gradient">

    <header>
        <div class="container">
            <div class="logo">
                <h1>LifeBridge</h1>
            </div>

            <nav>
                <ul>
                    <li><a href="about.jsp" class="arrow">About Us<span class="arrow_icon">&#x2192;</span></a></li>
                    <li><a href="treatments.jsp" class="arrow">Treatments<span class="arrow_icon">&#x2192;</span></a></li>
                    <li><a href="select.jsp" class="arrow">Doctors<span class="arrow_icon">&#x2192;</span></a></li>
                    <li><a href="option.jsp" class="arrow">Blood Request<span class="arrow_icon">&#x2192;</span></a></li>
                    <li><a href="contact.jsp" class="arrow">Contact Us<span class="arrow_icon">&#x2192;</span></a></li>
                    <li><a href="patient.jsp" class="book-appointment">Book Appointment</a></li>
                </ul>
            </nav>
        </div>
    </header>

</body>
</html>
