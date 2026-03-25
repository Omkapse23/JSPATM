<%@ page language="java" %>

<%
    String action = request.getParameter("action");
%>

<html>
<head>
    <title>ATM Operation</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

<div class="container">
    <h2>Operation</h2>

    <br><br>

    <form action="result.jsp" method="post">
        <input type="hidden" name="action" value="<%= action %>">

        Enter Amount
        <input type="number" name="amount">

        <br><br>

        Enter PIN Again
        <input type="password" name="pin" required>

        <br><br>

        <button type="submit">Process</button>
    </form>

    <br>
    <a href="index.jsp">Back</a>

</div>

</body>
</html>