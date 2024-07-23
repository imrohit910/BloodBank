<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dto.DonerSignup" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Donor Confirmation</title>
    <link rel="stylesheet" type="text/css" href="./CSS/donorThankyou.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<%
DonerSignup donor = (DonerSignup) session.getAttribute("donor");
String name = donor.getName();
String email = donor.getEmail();
String bgroup = donor.getBgroup();
int age = donor.getAge();
int quantity = donor.getQuantity();
String gender = donor.getGender();
%>

<div class="container">
    <div class="home-button">
        <a href="bloodbankApp.jsp" class="home">
            <img alt="home" src="./images/home.png" width="45px">Home
        </a>
        <a href="donerlogin.jsp?message=null" class="donerlogin">
            <img alt="donerlogin" src="./images/logout.png" width="45px">Donor Logout
        </a>
    </div>
    <h1>Thank You, <%= name %> for Donating Blood</h1>
    <div class="donor-details">
        <h2>Donor ID: <%= email %></h2>
        <h2>Blood Group: <%= bgroup %></h2>
        <h2>Quantity: <%= quantity %> ml</h2>
        <h2>Age: <%= age %></h2>
        <h2>Gender: <%= gender %></h2>
    </div>
</div>

</body>
</html>
