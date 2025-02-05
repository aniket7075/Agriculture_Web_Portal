<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cake Shop - Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Include Font Awesome for Icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">

    <style>
        /* General Styles */
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
        }

        .navbar {
            background-color: #fff;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
        }

        .navbar:hover {
            background-color: #ff6b6b;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
        }

        .navbar-brand {
            font-size: 2em;
            font-weight: bold;
            color: #333;
            letter-spacing: 1px;
            transition: color 0.3s ease, transform 0.3s ease;
        }

        .navbar-brand:hover {
            color: #fff;
            transform: translateY(-5px);
        }

        .nav-link {
            font-size: 1.2em;
            padding: 12px 20px;
            color: #555;
            font-weight: 500;
            transition: color 0.3s ease, transform 0.3s ease, font-size 0.3s ease;
        }

        .nav-link:hover {
            color: #fff;
            background-color: #007bff;
            transform: translateY(-3px);
            font-size: 1.3em; /* Slightly increase font size on hover */
        }

        .cart-badge {
            position: absolute;
            top: -8px;
            right: -8px;
            background-color: red;
            color: white;
            padding: 6px 12px;
            border-radius: 50%;
            font-size: 14px;
            animation: bounce 0.5s ease infinite alternate;
        }

        .cart-icon {
            font-size: 28px;
            transition: transform 0.3s ease;
        }

        .cart-icon:hover {
            transform: scale(1.2); /* Enlarge cart icon on hover */
        }

        /* Animation for cart badge */
        @keyframes bounce {
            0% {
                transform: translateY(0);
            }

            100% {
                transform: translateY(-10px);
            }
        }

        /* Animation for navbar item hover effect */
        @keyframes pulse {
            0% {
                transform: scale(1);
            }

            100% {
                transform: scale(1.1);
            }
        }

        /* User Info Section */
        .user-info {
            color: #333;
            font-size: 1.2em;
            text-align: center;
            margin-top: 10px;
            font-weight: 600;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .navbar-brand {
                font-size: 1.6em;
            }

            .navbar-nav .nav-item {
                font-size: 1.1em;
            }

            .cart-icon {
                font-size: 26px;
            }
        }
    </style>
</head>

<body>
    <!-- Navbar Section -->
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
            <!-- Cake Shop Brand -->
            <a class="navbar-brand" href="/dashboard">Cake Shop</a>

            <!-- Navbar Toggler for Mobile View -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Navbar Links -->
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <!-- Dashboard Link -->
                    <li class="nav-item">
                        <a class="nav-link" href="/dashboard">Dashboard</a>
                    </li>

                    <!-- Cart Link with Cart Badge -->
                    <li class="nav-item" style="position: relative;">
                        <a class="nav-link" href="/cart.jsp">
                            <i class="fas fa-shopping-cart cart-icon"></i>
                            <span class="cart-badge">${cartCount}</span>
                        </a>
                    </li>

                    <!-- User Info (only shown if logged in) -->
                    <c:if test="${not empty currentUser}">
                        <div class="container user-info">
                            <p>Welcome, ${currentUser.name}!</p>
                        </div>
                    </c:if>

                    <!-- Login/Logout Button -->
                    <c:if test="${not empty currentUser}">
                        <li class="nav-item">
                            <a class="nav-link" href="/login.jsp">Logout</a>
                        </li>
                    </c:if>
                    <c:if test="${empty currentUser}">
                        <li class="nav-item">
                            <a class="nav-link" href="/login.jsp">Login</a>
                        </li>
                    </c:if>
                </ul>
            </div>
        </div>
    </nav>

    <!-- JS for Bootstrap and other interactions -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
