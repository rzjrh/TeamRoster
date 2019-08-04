
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import= "com.RezaAk.meritamerica.web.rostergame.models.Team" %>
    
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Team List</title>
</head>
<body>

<h2><a href="/Team_Roster/NewTeam">Click here to add a new team</a></h2>
			<table border="1">
			<tr><th width="40%">Team</th><th>Number of Players</th><th width="35%">Action</th></tr>
		
			<%for(int i = 0; i < Team.getTeams().size();i++){ %>
			<tr align="center">
				<td><%= Team.getTeams().get(i).getTeam_name() %></td>
				<td><%= Team.getTeams().get(i).getPlayers().size() %></td>
				<td><a href="/Team_Roster/Teams?id=<%=i%>"><input type="submit" value="Details"></a>    
				<a href="/Team_Roster/Teams?id=<%=i%>&delete=true"><input type="submit" value="Delete"></a></td>
			</tr><%}%>
		</table>

</body>
</html>