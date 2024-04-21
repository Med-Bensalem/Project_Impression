<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.models.Matiere" %>
<%@ page import="com.example.models.Role" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ajouter un utilisateur</title>
</head>
<body>
    <h1>Ajouter un utilisateur</h1>
    <form action="AdminServlet?action=add" method="post">
        Username: <input type="text" name="username"><br>
        Password: <input type="password" name="password"><br>
        Email: <input type="email" name="email"><br>
        <!-- Dropdown select for role -->
        Role:
        <select name="role" id="roleSelect" multiple>
            <%-- Utiliser une boucle pour afficher les options des matières --%>
           <% List<Role> roles = (List<Role>) request.getAttribute("roles");
               if (roles != null) {
                   for (Role role : roles) { %>
                       <option value="<%= role.getName() %>"><%= role.getName() %></option>
            <%     }
               } %>
        </select><br>
        
        Matières enseignées:
        <select name="matieres" id="matieresSelect" multiple style="display: none;">
            <%-- Utiliser une boucle pour afficher les options des matières --%>
           <% List<Matiere> matieres = (List<Matiere>) request.getAttribute("matieres");
               if (matieres != null) {
                   for (Matiere matiere : matieres) { %>
                       <option value="<%= matiere.getId() %>"><%= matiere.getNom() %></option>
            <%     }
               } %>
        </select><br>
        Activer le compte :
        <input type="checkbox" name="activeCheckbox" id="activeCheckbox" checked><br>
        <input type="hidden" name="active" id="activeHiddenInput" value="true">
        
       
        <input type="submit" value="Ajouter">
    </form>

    <script>
    // Get the role select element
    var roleSelect = document.getElementById('roleSelect');
    var activeCheckbox = document.getElementById('activeCheckbox');
    var activeHiddenInput = document.getElementById('activeHiddenInput');
    
    // Add event listener to role select
    roleSelect.addEventListener('change', function() {
        var selectedRole = roleSelect.value;
        var matieresSelect = document.getElementById('matieresSelect');
        
        // If selected role is 'enseignant', show matieres select
        if (selectedRole === 'enseignant' || selectedRole === 'Enseignant') {
            // Show matieres select
            matieresSelect.style.display = 'block';
        } else {
            // Hide matieres select if selected role is not 'enseignant'
            matieresSelect.style.display = 'none';
        }
    });
    
    // Add event listener to active checkbox
    activeCheckbox.addEventListener('change', function() {
        // Set the value of the hidden input to the opposite of the checkbox value
        activeHiddenInput.value = activeCheckbox.checked ? "true" : "false";
    });
</script>

</body>
</html>
