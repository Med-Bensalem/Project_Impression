package com.example.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

import com.example.dao.ImpressionDao;
import com.example.dao.ImpressionDaoImp;
import com.example.models.Impression;
import com.example.models.User;

/**
 * Servlet implementation class AgentCalendarServlet
 */
@WebServlet("/calendar")
public class AgentCalendarServlet extends HttpServlet {

		private static final long serialVersionUID = 1L;
		private ImpressionDao impressionDao;

	    public void init() {
	        impressionDao = new ImpressionDaoImp();
	    }
	    /**
	     * @see HttpServlet#HttpServlet()
	     */
	    public AgentCalendarServlet() {
	        super();
	        // TODO Auto-generated constructor stub
	    }

		/**
		 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			 HttpSession session = request.getSession(false);
			 if (session != null) {
			        User user = (User) session.getAttribute("user");

			        if (user != null) {
			            int idEnseignant = user.getUserId();

			            List<Impression> impressions = impressionDao.getAllImpressions();

			            StringBuilder eventsJson = new StringBuilder("[");
			            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			            for (Impression impression : impressions) {
			                eventsJson.append("{");
			                eventsJson.append("\"title\": \"" 
			                        + impression.getNombreDePages() 
			                        + " pages pour le " 
			                        + impression.getGroupeNom() 
			                        + " pour la matiere " 
			                        + impression.getMatiereNom() 
			                        + "\",");

			                eventsJson.append("\"start\": \"" + dateFormat.format(impression.getDateImpression()) + "\"");
			                eventsJson.append("},");
			            }
			            // Remove the last comma
			            if (impressions.size() > 0) {
			                eventsJson.deleteCharAt(eventsJson.length() - 1);
			            }
			            eventsJson.append("]");

			          
			            request.setAttribute("eventsJson", eventsJson.toString());
			            request.getRequestDispatcher("calendar.jsp").forward(request, response);
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
		
		

	}
