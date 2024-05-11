package com.example.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

import com.example.dao.ImpressionDao;
import com.example.dao.ImpressionDaoImp;
import com.example.models.Impression;
import com.example.models.User;

/**
 * Servlet implementation class ImpressionListServlet
 */
@WebServlet("/listimpressions")
public class ImpressionListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ImpressionDao impressionDao;

    public void init() {
        impressionDao = new ImpressionDaoImp();
    }
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ImpressionListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String action = request.getParameter("action");
		 HttpSession session = request.getSession(false);
		 if (session != null) {
		        User user = (User) session.getAttribute("user");

		        if (user != null) {
		        	 if (action == null) {
				            action = "list"; 
				        }
				
				        switch (action) {
				            case "list":
				            	listimpression(request, response);
				                break;
				            case "delete":
				            	  deleteImpression(request, response);
				                break;
				            default:
				                response.sendRedirect("listimpressions?action=list");
				        }

			       
		        } else {
		            response.sendRedirect("login.jsp"); 
		        }
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
	
	 private void listimpression(HttpServletRequest request, HttpServletResponse response)
			  throws ServletException, IOException {
		  HttpSession session = request.getSession(false);
			
			 
			 if (session != null) {
		        User user = (User) session.getAttribute("user");
		        if (user != null) {
		        	 int idEnseignant = user.getUserId();
		     		
				        List<Impression> impressions = impressionDao.getImpressionsByEnseignantId(idEnseignant);
			
				        request.setAttribute("impressions", impressions);
				        request.getRequestDispatcher("impressionlist.jsp").forward(request, response);
		   	 } else {
		            response.sendRedirect("login.jsp"); 
		        }
		    } else {
		        response.sendRedirect("login.jsp"); 
		    }
	    }
	 
	  private void deleteImpression(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
		  int id = Integer.parseInt(request.getParameter("id"));
		  
		    impressionDao.deleteImpression(id);
		    response.sendRedirect("listimpressions?action=list");
	    }
	
	

}
