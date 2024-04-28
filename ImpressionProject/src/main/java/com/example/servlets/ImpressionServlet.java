package com.example.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import com.example.dao.GroupDao;
import com.example.dao.GroupDaoImp;
import com.example.dao.ImpressionDao;
import com.example.dao.ImpressionDaoImp;
import com.example.dao.MatiereDao;
import com.example.dao.MatiereDaoImp;
import com.example.models.Group;
import com.example.models.Impression;
import com.example.models.Matiere;
import com.example.models.User;

/**
 * Servlet implementation class ImpressionServlet
 */
@WebServlet("/Impression")
@MultipartConfig(maxFileSize = 1024 * 1024 * 5, // 5 MB
maxRequestSize = 1024 * 1024 * 10) // 10 MB
public class ImpressionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private GroupDao groupDao  ;
	private MatiereDao matiereDao;
	private ImpressionDao impressionDao;
	 public void init() {
	        matiereDao = new MatiereDaoImp();
	        groupDao = new GroupDaoImp();
	        impressionDao = new ImpressionDaoImp();
	    }
	 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ImpressionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	HttpSession session = request.getSession(false);
    	 if (session != null) {
		        User user = (User) session.getAttribute("user");

		        if (user != null) {
	        
				    int idEnseignant  = user.getUserId();
			        
			        List<Group> groups = groupDao.getAllGroups();
			        
			      
			       // List<Matiere> matieres = matiereDao.getAllMatieres();
			        List<Matiere> matieres = matiereDao.getMatieresByEnseignantId(idEnseignant);
			        request.setAttribute("groups", groups);
			        request.setAttribute("matieres", matieres);
			        System.out.println("Enseignant ID: " + idEnseignant);
			        System.out.println("Total groups: " + groups.size()); 
			        System.out.println("Total matieres for enseignant " + idEnseignant + ": " + matieres.size()); // Debug
			        request.getRequestDispatcher("addimpression.jsp").forward(request, response);
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


		        
		 int idEnseignant  = user.getUserId();
	        int idGroupe = Integer.parseInt(request.getParameter("groupe"));
	        int idMatiere = Integer.parseInt(request.getParameter("matiere"));
	       
	        String etat = "En attente";
	        int nombreDePages = groupDao.getGroupById(idGroupe).getNbetudiants(); 
	        String dateString = request.getParameter("dateImpression");

	        Date dateImpression = null;
	        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	      
	            try {
					dateImpression = dateFormat.parse(dateString);
				} catch (ParseException e) {
					
					e.printStackTrace();
				}
	            
	            Part filePart = request.getPart("document");
	            String fileName = UUID.randomUUID().toString() + getFileExtension(filePart); // Generate a unique file name
	            String uploadPath = getServletContext().getRealPath("/") + "uploads";
	            File uploadDir = new File(uploadPath);

	            if (!uploadDir.exists()) {
	                uploadDir.mkdirs(); // Create the directory if it doesn't exist
	            }

	            String filePath = uploadPath + File.separator + fileName;

	            // Save the file to the server
	            try (InputStream fileContent = filePart.getInputStream();
	                 FileOutputStream outputStream = new FileOutputStream(filePath)) {
	                byte[] buffer = new byte[1024];
	                int bytesRead;
	                while ((bytesRead = fileContent.read(buffer)) != -1) {
	                    outputStream.write(buffer, 0, bytesRead);
	                }
	                System.out.println("File saved at: " + filePath);
	            } catch (IOException e) {
	                e.printStackTrace();
	            }

	            // Set the file name (without extension) as the document
	            String document = fileName.substring(0, fileName.lastIndexOf('.'));

	        
	    
	        Impression impression = new Impression(0, idEnseignant, idGroupe, idMatiere, dateImpression, document, etat, nombreDePages);
	        
	   
	        impressionDao.addImpression(impression);

	        response.sendRedirect(request.getContextPath() + "/impressions");
	}
	
	private String getFileExtension(Part part) {
	    String fileName = part.getSubmittedFileName();
	    return fileName.substring(fileName.lastIndexOf('.'));
	}
}
