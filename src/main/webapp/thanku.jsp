<%@page import="com.dto.Buyer"%>
<%@page import="com.dto.DonerSignup"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thank You Page</title>
<link rel="stylesheet" type="text/css" href="./CSS/thankYou.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<%
Buyer b = (Buyer) session.getAttribute("buyer");
DonerSignup d = (DonerSignup) request.getSession().getAttribute("donor");
%>
<div class="container">
<h1>**********Thank You For Purchase*********</h1>
    <h2>Buyer Id: <%= b.getId() %></h2>
    <h2>Buyer Name: <%= b.getName() %></h2>
    <h2>Blood Group: <%= d.getBloodGroup().getBgname() %></h2>
    <h2>Quantity: <%= d.getQuantity() %></h2>
    <h2>Amount: <%= d.getAmount() %></h2>
    <div class="buttons">
        <a href="bloodbankApp.jsp"><button>Home</button></a>
        <a href="buyerLogin.jsp"><button>Buyer Logout</button></a>
    </div>
</div>
</body>
</html>
