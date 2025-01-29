<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Background image with animation */
        body {
            background-image: url('/img/Farmd.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            font-family: Arial, sans-serif;
            background-color: rgba(0, 0, 0, 0);
            display: flex;
            justify-content: center;
            align-items: center;
            transition: background-image 10s ease-in-out;
            animation: backgroundAnimation 20s ease infinite;
        }

        /* Keyframe animation for background image effect */
        @keyframes backgroundAnimation {
            0% {
                background-image: url('/img/Farmd.jpg');
            }
            50% {
                background-image: url('/img/farm2.jpg'); /* Replace with another image */
            }
            100% {
                background-image: url('/img/farm1.jpg');
            }
        }

        /* Form container style */
        .container {
            max-width: 600px;
            width: 100%;
            padding: 30px;
            background-color: rgba(255, 255, 255, 0.9); /* Slightly higher opacity */
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            opacity: 0;
            animation: fadeIn 1s forwards; /* Fade-in effect for the form */
        }

        /* Fade-in animation */
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        h2 {
            color: #333;
        }

        .form-label {
            font-weight: bold;
        }

        .form-control,
        .form-select {
            border-radius: 4px;
        }

        .btn {
            border-radius: 4px;
            background-color: #007bff;
            color: white;
            padding: 10px;
            font-size: 16px;
            transition: transform 0.3s ease, background-color 0.3s ease;
        }

        /* Button hover animation */
        .btn:hover {
            background-color: #0056b3;
            transform: scale(1.05); /* Button scale effect */
        }

        p {
            color: #333;
        }

        a {
            color: #007bff;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        /* Smooth scroll effect */
        html {
            scroll-behavior: smooth;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="text-center">Registration</h2>
        <form action="/register" method="post" class="mt-4">
            <div class="mb-3">
                <label for="username" class="form-label">Username</label>
                <input type="text" class="form-control" id="username" name="username" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <div class="mb-3">
                <label for="role" class="form-label">Role</label>
                <select class="form-select" id="role" name="role" required>
                    <option value="Farmer">Farmer</option>
                    <option value="Customer">Customer</option>
                    <option value="Admin">Admin</option>
                </select>
            </div>
            <button type="submit" class="btn w-100">Register</button>
        </form>
        <p class="text-center mt-3">Already have an account? <a href="login.jsp">Login</a></p>
    </div>

    <!-- Bootstrap and JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
    <script>
        // Optional: Add more JavaScript functionality here
        // For example, form validation, or other dynamic effects
    </script>
</body>
</html>
