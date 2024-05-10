package com.example.servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import com.example.dao.GroupDao;
import com.example.dao.GroupDaoImp;
import com.example.dao.ImpressionDao;
import com.example.dao.ImpressionDaoImp;
import com.example.dao.UserDao;
import com.example.dao.UserDaoImp;
import com.example.models.Group;

import com.google.gson.Gson;

/**
 * Servlet implementation class DashboardServlet
 */
@WebServlet("/admindasboard")
public class DashboardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private GroupDao groupDao;
	private UserDao userDao;
	private ImpressionDao impressionDao;
    public void init() {
        groupDao = new GroupDaoImp();
        userDao = new UserDaoImp();
        impressionDao = new ImpressionDaoImp();
    }
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DashboardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		 if (session != null) {

      
			        List<Group> groups = groupDao.getAllGroups();
			        request.setAttribute("totalGroups", groups.size());
			
			       
			        int totalStudents = 0;
			        for (Group group : groups) {
			            totalStudents += group.getNbetudiants();
			        }
			        request.setAttribute("totalStudents", totalStudents);
			
			       
			        int totalEnseignants = userDao.getUsersCountByRole("enseignant");
			        request.setAttribute("totalEnseignants", totalEnseignants);
			
			      
			        int totalAgents = userDao.getUsersCountByRole("agent");
			        request.setAttribute("totalAgents", totalAgents);
			        
			        List<Map<String, Object>> impressionsByMonth = impressionDao.getImpressionsByMonth();
			        String impressionsByMonthJson = new Gson().toJson(impressionsByMonth);
			        System.out.println(impressionsByMonthJson);

			        request.setAttribute("impressionsByMonthJson", impressionsByMonthJson);
					 RequestDispatcher dispatcher = request.getRequestDispatcher("adminDashboard.jsp");
				        dispatcher.forward(request, response);
			 } else {
			        response.sendRedirect("login.jsp"); 
			    }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
