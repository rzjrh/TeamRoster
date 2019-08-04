
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Player</title>
</head>
<body>
<h1>Create a New Player!</h1>
		<form method="post" action="/Team_Roster/Teams?id=<%= request.getParameter("id") %>">
			<p>First Name: <input type="text" name="first_name"></p>
			<p>Last Name: <input type = "text" name = "last_name"></p>
			<p>Age: <input type="number" name="age"></p>
			<button>Add</button>
		</form>
</body>
</html>