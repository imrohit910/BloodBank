<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="./CSS/signup.css">
</head>
<body>
<div class="container">
    <div class="home-button">
        <a href="bloodbankApp.jsp" class="home">
            <img alt="home" src="./images/home.png" width="45px">Home
        </a>
    </div>

    <h1>Buyer Signup</h1>

    <form action="buyersignup">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>

        <label for="pass">Password:</label>
        <input type="password" id="pass" name="pass" required><br><br>

        <label for="age">Age:</label>
        <input type="text" id="age" name="age" required><br><br>

        <label>Gender:</label>
        <input type="radio" id="male" name="gen" value="male" required> Male
        <input type="radio" id="female" name="gen" value="female" required> Female
        <input type="radio" id="others" name="gen" value="others" required> Other
		<br><br>
        <label for="mob">Phone number:</label>
        <input type="tel" id="mob" name="mob" required><br><br>

        <label for="bg">Blood Group:</label>
        <select id="bg" name="bg" required>
            <option>O+</option>
            <option>O-</option>
            <option>A+</option>
            <option>A-</option>
            <option>B+</option>
            <option>B-</option>
            <option>AB+</option>
            <option>AB-</option>
        </select>
		<br><br>
        <input type="submit" value="Signup">
        <input type="reset" value="Cancel">
    </form>
</div>
</body>
</html>
