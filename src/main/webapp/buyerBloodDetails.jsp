<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dto.Buyer" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buyer Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="./CSS/buyerBloodDetails.css">
</head>
<body>
<% 
    Buyer buyer = (Buyer) request.getSession().getAttribute("buyer");
    if (buyer != null) {
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

    <div class="buttons">
        <a href="buyerdisplaybloodDetails?id=O%2B"><button>O+</button></a>
        <a href="buyerdisplaybloodDetails?id=O-"><button>O-</button></a>
        <a href="buyerdisplaybloodDetails?id=A%2B"><button>A+</button></a>
        <a href="buyerdisplaybloodDetails?id=A-"><button>A-</button></a>
        <a href="buyerdisplaybloodDetails?id=B%2B"><button>B+</button></a>
        <a href="buyerdisplaybloodDetails?id=B-"><button>B-</button></a>
        <a href="buyerdisplaybloodDetails?id=AB%2B"><button>AB+</button></a>
        <a href="buyerdisplaybloodDetails?id=AB-"><button>AB-</button></a>
    </div>
</div>
<% 
    } else {
%>
    <h1>Buyer Login First..</h1>
    <% 
        request.getRequestDispatcher("buyerLogin.jsp").include(request, response);
    }
%>
</body>
</html>
