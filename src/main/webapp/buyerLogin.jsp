<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buyer Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="./CSS/buyerLogin.css">
</head>
<body>
<div class="container">
    <div class="home-button">
        <a href="bloodbankApp.jsp" class="home">
            <img alt="home" src="./images/home.png">Home
        </a>
    </div>

    <h1>Buyer Login</h1>

    <form action="buyerlogin">
        <label for="email">Username:</label>
        <input type="email" id="email" name="email" required>

        <label for="pass">Password:</label>
        <input type="password" id="pass" name="pass" required>

        <input type="submit" value="Login">
        <input type="reset" value="Cancel">
    </form>
</div>
</body>
</html>
