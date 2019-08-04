
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Team</title>
</head>

<body>

<h1>Create A New Team</h1>
		<form action= "/Team_Roster/NewTeam" method="post">
			<p>Team Name: <input type="text" name="team_name"></p>
			<button>Create</button>
		</form>
		
</body>
</html>