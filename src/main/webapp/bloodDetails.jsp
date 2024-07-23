<%@ page import="com.dto.DonerSignup" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Donor Dashboard</title>
    <link rel="stylesheet" type="text/css" href="./CSS/bloodDetails.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<%
DonerSignup donor = (DonerSignup) session.getAttribute("donor");
String name = donor.getName();
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
    <h1>Welcome, <%= name %>!</h1>
    <form action="bloodDetail" method="">
        <div class="form-group">
            <label for="bg">Blood Group:</label>
            <input type="text" id="bg" value="<%= donor.getBgroup() %>" readonly="readonly" name="bg">
        </div>

        <div class="form-group">
            <label for="quantity">Quantity:</label>
            <select id="quantity" name="quantity">
                <option value="300">300</option>
                <option value="400">400</option>
                <option value="500">500</option>
                <option value="600">600</option>
                <option value="700">700</option>
                <option value="800">800</option>
                <option value="900">900</option>
                <option value="1000">1000</option>
            </select>
        </div>
        
        <div class="form-group">
            <input type="submit" value="Donate">
            <input type="reset" value="Cancel">
        </div>
    </form>
</div>

</body>
</html>
