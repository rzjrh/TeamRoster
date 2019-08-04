package com.RezaAk.meritamerica.web.rostergame.Controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.RezaAk.meritamerica.web.rostergame.models.Team;

/**
 * Servlet implementation class NewTeam
 */
@WebServlet("/NewTeam")
public class NewTeam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewTeam() {
        super();
        // TODO Auto-generated constructor stub
    }

    
    
    
    
    //doGet
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.getRequestDispatcher("/WEB-INF/NewTeam.jsp").forward(request, response);
	}

	
	
	
	
	//doPost
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		if(request.getParameter("team_name")!=null) {
			Team.addTeam(request.getParameter("team_name"));
			response.sendRedirect("/Team_Roster/Home");
		}else
		{
		
		doGet(request, response);
	}

	}
}
