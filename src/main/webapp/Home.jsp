<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('/static/img/farm1.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
        }
        .welcome-container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100%;
            text-align: center;
            color: red;
            background: rgba(0, 0, 0, 0.6);
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.5);
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
        .welcome-container h1 {
            font-size: 3rem;
            margin-bottom: 20px;
            animation: fadeIn 2s ease-in-out;
        }
        .btn-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 15px;
            animation: slideIn 2s ease-in-out;
        }
        .btn-custom {
            padding: 15px 30px;
            font-size: 1.2rem;
            border-radius: 8px;
            border: none;
            transition: transform 0.3s, background-color 0.3s;
        }
        .btn-custom:hover {
            transform: scale(1.1);
            background-color: #343a40 !important;
        }
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        @keyframes slideIn {
            from { transform: translateY(100px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }
    </style>
</head>
<body>
    <div class="welcome-container">
        <h1>Welcome to Our Platform</h1>
        <div class="btn-container">
            <a href="/farmer-login" class="btn btn-primary btn-custom">Farmer Login</a>
            <a href="/admin-login" class="btn btn-success btn-custom">Admin Login</a>
            <a href="/customer-login" class="btn btn-warning btn-custom">Customer Login</a>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
