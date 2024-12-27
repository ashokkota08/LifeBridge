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

        /* Hero Section */
        .hero {
            background-image: url('cover-bg.jpg'); /* Replace with your actual image */
            background-size: cover;
            background-position: center;
            color: #fff;
            text-align: center;
            padding: 150px 0; /* Adjust padding based on image height */
            display: flex; /* Use flexbox for easier text positioning */
		    justify-content: flex-start; /* Align text to the left */
		  
		     
            
            
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
         body::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(to bottom, rgba(0, 0, 0, 0) 0%, rgba(56, 178, 172, 1) 100%); 
            pointer-events: none; /* Allow clicks to pass through */
            background-size: cover;
             padding: 130px 0;
        }
			.hero-text {
			    text-align: left; /* Align text to the left */
			    color: #fff;
			    z-index: 1; /* Ensure text is on top of the gradient */
			    margin-left: 80px; /* Add left margin for spacing */
			    margin-top:20px;
			}
			
			.hero-text h1 {
			    font-size: 48px;
			    margin: 0;
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
                   <li><a href="option.jsp" class="arrow">Blood Request</a></li>
                    
                    <li><a href="contact.jsp" class="arrow">Contact Us<span class="arrow_icon">&#x2192;</span></a></li>
                    <li><a href="patient.jsp" class="book-appointment">Book Appointment</a></li>
                </ul>
            </nav>
        </div>
    </header>

   <section class="hero"> 
        <div class="hero-text">
            <h1>A better life<br>starts with <br>good Health.</h1>
            <p>Welcome to Life Bridge The Hospital Management System.</p>
        </div>
    </section>
    
     <section class="relative px-4 py-16 sm:px-8 lg:px-16 xl:px-40 2xl:px-64 lg:py-32">
      <div class="flex flex-col lg:flex-row lg:-mx-8">
        <div class="w-full lg:w-1/2 lg:px-8">
          <h2 class="text-3xl leading-tight font-bold mt-4">Welcome to the Dentist Office of Dr. Thomas Dooley</h2>
          <p class="text-lg mt-4 font-semibold">Excellence in Dentistry in the Heart of NY</p>
          <p class="mt-2 leading-relaxed">Donec convallis sollicitudin facilisis. Integer nisl ligula, accumsan non
            tincidunt ac, imperdiet in enim.
            Donec efficitur ullamcorper metus, eu venenatis nunc. Nam eget neque tempus, mollis sem a, faucibus mi.</p>
        </div>

</body>
</html>




 