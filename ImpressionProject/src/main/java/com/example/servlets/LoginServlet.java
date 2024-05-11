package com.example.servlets;

import java.io.IOException;

import com.example.dao.UserDao;
import com.example.dao.UserDaoImp;
import com.example.models.User;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
        dispatcher.forward(request, response);
    }
    
    private UserDao userDao = new UserDaoImp();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Retrieve user from database based on username and password
        User user = userDao.getUserByEmailAndPassword(email, password);
        System.out.println("User ID Retrieved: " + user.getUserId());

        if (user != null && user.isActive()) {
            // User found, set session attribute and redirect to home page
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            if (user.getRole().equals("agent")) {
                response.sendRedirect("agentimpressionlist.jsp");
            } else if (user.getRole().equals("admin")) {
                response.sendRedirect("adminDashboard.jsp");
            } else if (user.getRole().equals("enseignant")) {
                response.sendRedirect("addimpression.jsp");
            } else {
                response.sendRedirect("home.jsp");
            }
        } else if (user != null && ! user.isActive()){
            // User not found, redirect to login page with error message
        	request.setAttribute("errorMessage", "Compte n'est pas activer ");
            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
            dispatcher.forward(request, response);
        }else {
        	request.setAttribute("errorMessage", "Adresse Email ou mot de passe incorrect ");
            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
            dispatcher.forward(request, response);
        }
    }
}
