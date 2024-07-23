<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Donor Login</title>
    <link rel="stylesheet" type="text/css" href="./CSS/donerlogin.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    
<div class="container">
		<a href="bloodbankApp.jsp" class="home"><img alt="home" src="./images/home.png" width="45px"></a>
        <h1>Donor Login</h1>
        <form action="Donerlogin">
            <div class="form-group">
                <label for="email">Username (Email):</label>
                <input type="email" id="email" name="email" required>
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
