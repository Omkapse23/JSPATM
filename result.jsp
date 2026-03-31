<%@ page language="java" %>

<%! 
    static int balance = 10000;
%>

<%
    String correctPin = "8830";

    String action = request.getParameter("action");
    String pin = request.getParameter("pin");

    String message = "";

    if(pin == null || !pin.equals(correctPin)) {
        message = "Invalid PIN ";
    } else {

        String amtStr = request.getParameter("amount");
        int amount = 0;

        if(amtStr != null && !amtStr.isEmpty()) {
            amount = Integer.parseInt(amtStr);
        }

        if("balance".equals(action)) {
            message = "Current Balance: " + balance;
        }
        else if("deposit".equals(action)) {
            balance += amount;
            message = "Deposit Successful <br>New Balance: " + balance;
        }
        else if("withdraw".equals(action)) {
            if(amount <= balance) {
                balance -= amount;
                message = "Withdraw Successful <br>New Balance: " + balance;
            } else {
                message = "Insufficient Balance";
            }
        }
    }
%>

<html>
<head>
    <title>Result</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

<div class="container">
    <h1>Transaction Result</h1>

    <p><%= message %></p>

    <a href="index.jsp?pin=<%= pin %>"><button>Back to Home</button></a>
</div>

</body>
</html>