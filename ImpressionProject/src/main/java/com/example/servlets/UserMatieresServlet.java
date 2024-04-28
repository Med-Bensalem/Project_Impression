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

import com.example.dao.EnseignementDao;
import com.example.dao.EnseignementDaoImp;
import com.example.dao.MatiereDao;
import com.example.dao.MatiereDaoImp;
import com.example.dao.UserDao;
import com.example.dao.UserDaoImp;
import com.example.models.Matiere;
import com.example.models.User;

/**
 * Servlet implementation class UserMatieresServlet
 */
@WebServlet("/usermatiere")
public class UserMatieresServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private MatiereDao matiereDao;
	 
	 private EnseignementDao enseignementDao;

	   
	    
	    public void init() {
	        matiereDao = new MatiereDaoImp();
	        enseignementDao = new EnseignementDaoImp();
	    }
    /**
     * @see HttpServlet#HttpServlet()
     */
   

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 HttpSession session = request.getSession(false);
		 if (session != null) {
		        User user = (User) session.getAttribute("user");

		        if (user != null) {
	 
			        
			        List<Matiere> matieres = matiereDao.getAllMatieres();
			        request.setAttribute("matieres", matieres);
			        request.getRequestDispatcher("usermatiere.jsp").forward(request, response);
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
		 HttpSession session = request.getSession();
		    User user = (User) session.getAttribute("user");
		    
		    if (user != null) {
		    	 System.out.println("gg" );
		        int user_id = user.getUserId();
		        
		       
		        String[] selectedSubjects = request.getParameterValues("subject");
		        
		      
		        enseignementDao.saveEnsMatieres(user_id, selectedSubjects);
		        
		       
		        response.sendRedirect("confirmation.jsp");
		    } else {
		      
		        response.sendRedirect("error.jsp");
		    }
	}

}
