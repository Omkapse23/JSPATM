<%@ page language="java" %>

<html>
    <head>
        <title>ATM Menu</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="container">

            <% 
                String correctPin = "8830";
                String pin = request.getParameter("pin");

                if(pin == null || !pin.equals(correctPin)) {
            %>
                Invalid Pin! <br><br>
                <a href="index.jsp">Try Again</a>

            <% 
                } else {    
            %>

            <h1>Menu</h1>

            <a href="operation.jsp?action=withdraw"><button>Withdraw</button></a>
            <br><br>
            <a href="operation.jsp?action=deposit"><button>Deposit</button></a>
            <br><br>
            <a href="operation.jsp?action=balance"><button>Check Balance</button></a>

            <%
                }
            %>

        </div>
    </body>
</html>

