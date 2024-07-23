<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Login</title>
    <link rel="stylesheet" type="text/css" href="./CSS/adminLogin.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <div class="container">
        <div class="home-button">
            <a href="bloodbankApp.jsp" class="home">
                <img alt="home" src="./images/home.png" width="45px">Home
            </a>
        </div>
        <h1>Admin Login</h1>
        <form action="AdminLogin">
            <div class="form-group">
                <label for="name">Username:</label>
                <input type="text" id="name" name="name" required>
            </div>

            <div class="form-group">
                <label for="pass">Password:</label>
                <input type="password" id="pass" name="pass" required>
            </div>

            <div class="form-group">
                <input type="submit" value="Login">
                <input type="reset" value="Cancel">
            </div>
        </form>
    </div>
</body>
</html>
