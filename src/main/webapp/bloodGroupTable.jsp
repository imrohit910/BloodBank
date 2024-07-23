<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dto.Admin"%>
<%@ page import="com.dto.BloodGroup"%>
<%@ page import="com.dto.DonerSignup"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Blood Group Details</title>
    <link rel="stylesheet" type="text/css" href="./CSS/adminHome.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<% 
    BloodGroup bloodgroup = (BloodGroup) session.getAttribute("bgroup");
    List<DonerSignup> list = bloodgroup.getDonerSignups();
%>

<div class="container">
    <div class="home-button">
        <a href="bloodbankApp.jsp" class="home">
            <img alt="home" src="./images/home.png" width="45px">Home
        </a>
        <a href="adminLogin.jsp" class="adminlogout">
            <img alt="adminlogout" src="./images/logout.png" width="45px">Admin Logout
        </a>
    </div>

    <h1>Blood Group: <%= bloodgroup.getBgname() %></h1>

    <table border="1px" width="100%" cellpadding="5px" cellspacing="5px">
        <tr>
            <th>S.No</th>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>AGE</th>
            <th>Gender</th>
            <th>Phone Number</th>
            <th>Blood Group</th>
            <th>Status</th>
            <th>Amount</th>
            <th>Quantity</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
        <% 
        int i = 1;
        for (DonerSignup d : list) { 
        %>
        <tr>
            <td><%= i++ %></td>
            <td><%= d.getId() %></td>
            <td><%= d.getName() %></td>
            <td><%= d.getEmail() %></td>
            <td><%= d.getAge() %></td>
            <td><%= d.getGender() %></td>
            <td><%= d.getPhone() %></td>
            <td><%= d.getBgroup() %></td>
            <td><%= d.getStatus() %></td>
            <td><%= d.getAmount() %></td>
            <td><%= d.getQuantity() %></td>
            <td><a href="updateStatus?id=<%= d.getId() %>"><button>Update Status</button></a></td>
            <td><a href="deleteDonorSignup?id=<%= d.getId() %>"><button>Delete</button></a></td>
        </tr>
        <% 
        } 
        %>
    </table>
</div>

</body>
</html>
