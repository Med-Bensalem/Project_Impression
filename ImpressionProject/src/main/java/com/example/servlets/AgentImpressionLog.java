package com.example.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.List;

import com.example.dao.ImpressionDao;
import com.example.dao.ImpressionDaoImp;
import com.example.models.Impression;
import com.example.models.Matiere;
import com.example.models.User;
import java.io.OutputStream;

/**
 * Servlet implementation class AgentImpression
 */
@WebServlet("/agentimpressionslog")
public class AgentImpressionLog extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ImpressionDao impressionDao;

    public void init() {
        impressionDao = new ImpressionDaoImp();
    }
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AgentImpressionLog() {
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
				            case "imprime":
				                imprime(request, response);
				                break;
				            case "delete":
				            	  deleteImpression(request, response);
				                break;
				            default:
				                response.sendRedirect("agentimpressionslog?action=list");
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

		        List<Impression> impressions = impressionDao.getAllImpressionslog();

		        request.setAttribute("impressions", impressions);
		        request.getRequestDispatcher("agentimpressionlistLog.jsp").forward(request, response);
		   	 } else {
		            response.sendRedirect("login.jsp"); 
		        }
		    } else {
		        response.sendRedirect("login.jsp"); 
		    }
	    }
	  
	  private void imprime(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
		  int id = Integer.parseInt(request.getParameter("id"));
		    
		    // Update the impression state to "Complete"
		    impressionDao.updateImpressionState(id, "Complete");
		    
		    // Get the impression by id
		    Impression impression = impressionDao.getImpressionById(id);
		    if (impression != null) {
		        // Get the file path
		    	 String filePath = "C:/Users/hatem/eclipse-workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/ImpressionProject/uploads/" + impression.getDocument();
			        File file = new File(filePath);
			        if (file.exists()) {
		                response.setContentType("application/octet-stream");
		                response.setContentLength((int) file.length());
		                response.setHeader("Content-Disposition", "attachment; filename=\"" + file.getName() + "\"");

		                FileInputStream fis = new FileInputStream(file);
		                byte[] buffer = new byte[4096];
		                int bytesRead;

		                try {
		                    while ((bytesRead = fis.read(buffer)) != -1) {
		                        response.getOutputStream().write(buffer, 0, bytesRead);
		                    }
		                } finally {
		                    fis.close();
		                }
		            } else {
		                response.getWriter().println("File not found");
		            }
		    } else {
		        // If impression not found, handle it accordingly
		        response.sendRedirect("agentimpressionslog?action=list");
		    }
	    }
	  
	  private void deleteImpression(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
		  int id = Integer.parseInt(request.getParameter("id"));
		  
		    impressionDao.deleteImpression(id);
		    response.sendRedirect("agentimpressionslog?action=list");
	    }
	
	

}
