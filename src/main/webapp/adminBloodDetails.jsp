<%@page import="com.dto.Admin" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home</title>
<link rel="stylesheet" type="text/css" href="./CSS/adminBloodDetail.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<% 
    Admin admin = (Admin) request.getSession().getAttribute("admin");
    if (admin != null) {
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
        <h1>Welcome, Admin</h1>
        <div class="blood-groups">
            <a href="displayBloodDetails?id=O%2B"><button>O+</button></a>
            <a href="displayBloodDetails?id=O-"><button>O-</button></a>
            <a href="displayBloodDetails?id=A%2B"><button>A+</button></a>
            <a href="displayBloodDetails?id=A-"><button>A-</button></a>
            <a href="displayBloodDetails?id=B%2B"><button>B+</button></a>
            <a href="displayBloodDetails?id=B-"><button>B-</button></a>
            <a href="displayBloodDetails?id=AB%2B"><button>AB+</button></a>
            <a href="displayBloodDetails?id=AB-"><button>AB-</button></a>
        </div>
    </div>
<% 
    } else {
%>
    <h1>Admin Login First..</h1>
    <%
        request.getRequestDispatcher("adminLogin.jsp?adlogin=null").include(request, response);
    }
%>
</body>
</html>
