package com.example.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.example.dao.GroupDao;
import com.example.dao.GroupDaoImp;
import com.example.models.Group;

/**
 * Servlet implementation class GroupServlet
 */
@WebServlet("/Group")
public class GroupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private GroupDao groupDao;

    public void init() {
        groupDao = new GroupDaoImp();
    }
    /**
     * @see HttpServlet#HttpServlet()
     */
   

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");

        if (action == null) {
            action = "list"; 
        }

        switch (action) {
            case "list":
                listGroups(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "delete":
                deleteGroup(request, response);
                break;
            default:
                response.sendRedirect("Group?action=list");
        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String action = request.getParameter("action");

	        switch (action) {
	            case "add":
	                addGroup(request, response);
	                break;
	            case "update":
	                updateGroup(request, response);
	                break;
	            default:
	                response.sendRedirect("Group?action=list");
	        }
	}
	
	 private void listGroups(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        List<Group> groups = groupDao.getAllGroups();
	        request.setAttribute("groups", groups);
	        request.getRequestDispatcher("groupList.jsp").forward(request, response);
	    }

	    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        int id = Integer.parseInt(request.getParameter("id"));
	        Group group = groupDao.getGroupById(id);
	        request.setAttribute("group", group);
	        request.getRequestDispatcher("editGroup.jsp").forward(request, response);
	    }

	    private void addGroup(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        String nom = request.getParameter("nom");
	        String nbetudiantsStr = request.getParameter("nbetudiants");
	        int nbetudiants = Integer.parseInt(nbetudiantsStr);

	        Group newGroup = new Group();
	        newGroup.setNom(nom);
	        newGroup.setNbetudiants(nbetudiants);

	        groupDao.addGroup(newGroup);
	        response.sendRedirect("Group?action=list");
	    }

	    private void updateGroup(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        int id = Integer.parseInt(request.getParameter("id"));
	        String nom = request.getParameter("nom");
	        String nbetudiantsStr = request.getParameter("nbetudiants");
	        int nbetudiants = Integer.parseInt(nbetudiantsStr);

	        Group newGroup = new Group();
	        newGroup.setId(id);
	        newGroup.setNom(nom);
	        newGroup.setNbetudiants(nbetudiants);

	        groupDao.updateGroup(newGroup);
	        response.sendRedirect("Group?action=list");
	    }

	    private void deleteGroup(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        int id = Integer.parseInt(request.getParameter("id"));
	        groupDao.deleteGroup(id);
	        response.sendRedirect("Group?action=list");
	    }

}
