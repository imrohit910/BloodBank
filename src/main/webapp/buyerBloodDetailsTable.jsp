<%@ page import="java.util.List" %>
<%@ page import="com.dto.DonerSignup" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Blood Details</title>
<link rel="stylesheet" type="text/css" href="./CSS/buyerBloodDetailsTable.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<%
List<DonerSignup> list = (List<DonerSignup>) session.getAttribute("list");
%>
<div class="container">
	<div class="header">
        <a href="bloodbankApp.jsp" class="home">
            <img alt="home" src="./images/home.png">Home
        </a>
        <a href="buyerLogin.jsp" class="buyerlogout">
            <img alt="buyerlogout" src="./images/logout.png">Buyer Logout
        </a>
    </div>
    <h1>Blood Details</h1>
    <table>
        <tr>
            <th>S.No</th>
            <th>ID</th>
            <th>Quantity</th>
            <th>Amount</th>
            <th>Buy</th>
        </tr>
        <%
        int i = 1;
        for (DonerSignup d : list) {
        %>
        <tr>
            <td><%= i++ %></td>
            <td><%= d.getBloodGroup().getBgname() %></td>
            <td><%= d.getQuantity() %></td>
            <td><%= d.getAmount() %></td>
            <td><a href="buyBlood?id=<%= d.getBloodGroup().getId() %>&donerId=<%= d.getId() %>"><button>Buy</button></a></td>
        </tr>
        <% } %>
    </table>
</div>
</body>
</html>
