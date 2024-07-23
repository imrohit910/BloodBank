<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Donor Signup Page</title>
    <link rel="stylesheet" type="text/css" href="./CSS/donersign.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
   
    <div class="container">
    <div class="home-button">
        <a href="bloodbankApp.jsp" class="home"><img alt="home" src="./images/home.png" width="45px">Home</a>
        <a href="donerlogin.jsp" class="donerlogin"><img alt="donerlogin" src="./images/login.png" width="45px">DonerLogin</a>
    </div>
        <h1>Donor Signup</h1>
        <form action="donerSignUp">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>

            <div class="form-group">
                <label for="pass">Password:</label>
                <input type="password" id="pass" name="pass" required>
            </div>

            <div class="form-group">
                <label for="mob">Phone:</label>
                <input type="tel" id="mob" name="mob" required>
            </div>

            <div class="form-group">
                <label for="dob">DOB:</label>
                <input type="date" id="dob" name="dob" required>
            </div>

            <div class="form-group">
                <label for="age">Age:</label>
                <input type="number" id="age" name="age" required>
            </div>

            <div class="form-group">
                <label for="bg">Blood Group:</label>
                <select id="bg" name="bg" required>
                    <option value="O+">O+</option>
                    <option value="O-">O-</option>
                    <option value="A+">A+</option>
                    <option value="A-">A-</option>
                    <option value="B+">B+</option>
                    <option value="B-">B-</option>
                    <option value="AB+">AB+</option>
                    <option value="AB-">AB-</option>
                </select>
            </div>

            <div class="form-group">
                <label>Gender:</label>
                <input type="radio" id="male" name="gen" value="male">male
                <input type="radio" id="female" name="gen" value="female">female
                <input type="radio" id="others" name="gen" value="others">others
            </div>

            <div class="form-group">
                <input type="submit" value="Signup">
                <input type="reset" value="Cancel">
            </div>
        </form>
        
    </div>
    

</body>
</html>
