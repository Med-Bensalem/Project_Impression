package com.example.servlets;

import com.example.dao.UserDAO;
import com.example.models.User;
import java.io.IOException;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        UserDAO userDao = new UserDAO();
        try {
            User user = userDao.getUserByUsernameAndPassword(username, password);
            if (user != null) {
                request.getSession().setAttribute("user", user);
                response.sendRedirect(request.getContextPath() + "/home.jsp");
            } else {
                response.sendRedirect(request.getContextPath() + "/login.jsp?error=1");
            }
        } catch (SQLException e) {
            throw new ServletException("Database access error", e);
        }
    }
}
