<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.models.Role" %>
<%@ page import="com.example.models.User" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Modifier un utilisateur</title>
</head>
<body>
    <h1>Modifier un utilisateur</h1>
    <%  User user = (User) request.getAttribute("user"); 
    String userRole = user.getRole(); 
    %> <!-- Récupérer le rôle de l'utilisateur -->
    <form action="AdminServlet?action=edit" method="post">
        <input type="hidden" name="userId" value="${user.userId}">
        Username: <input type="text" name="username" value="${user.username}"><br>
        Password: <input type="password" name="password" value="${user.password}"><br>
        Email: <input type="email" name="email" value="${user.email}"><br>
        Role:
        <select name="role">
            <%-- Utiliser une boucle pour afficher les options des rôles --%>
            <% List<Role> roles = (List<Role>) request.getAttribute("roles");
               if (roles != null) {
                   for (Role role : roles) { %>
                       <option value="<%= role.getName() %>" <%= role.getName().equals(userRole) ? "selected" : "" %>><%= role.getName() %></option>
            <%     }
               } %>
        </select><br>
       
        <input type="submit" value="Enregistrer les modifications">
    </form>
</body>
</html>
