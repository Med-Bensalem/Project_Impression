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

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User user = new User();
        user.setUsername(username);
        user.setPassword(password);

        UserDAO userDao = new UserDAO();
        try {
            userDao.addUser(user);
            response.sendRedirect(request.getContextPath() + "/login.jsp");
        } catch (SQLException e) {
            throw new ServletException("Database access error", e);
        }
    }
}
