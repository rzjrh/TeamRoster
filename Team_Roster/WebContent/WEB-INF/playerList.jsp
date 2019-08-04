<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import= "com.RezaAk.meritamerica.web.rostergame.models.Team" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% Team team = Team.getTeams().get(Integer.parseInt(request.getParameter("id"))); %>
		<h1><%=team.getTeam_name() %></h1>
		
		<h2><a href="/Team_Roster/Home">Home</a> <a href="/Team_Roster/Players?id=<%=request.getParameter("id") %>">New Player</a></h2>
		
		<table>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Age</th>
				<th>Actions</th>
			</tr>
			<%for(int i = 0; i < team.getPlayers().size(); i++ ){ %>
			<tr>
				<td><%= team.getPlayers().get(i).getFirst_name() %></td>
				<td><%=team.getPlayers().get(i).getLast_name() %></td>
				<td><%=team.getPlayers().get(i).getAge() %></td>
				<td>
					<a href="/Team_Roster/Players?team_id=<%= request.getParameter("id")%>&player_id=<%=i%>&delete=true">Delete</a>
				</td>
			</tr>
			<%} %>
		</table>


</body>
</html>