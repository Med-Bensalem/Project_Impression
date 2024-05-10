package com.example.utilis;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCUtils {
    private static final String URL = "jdbc:mysql://localhost:3306/gestion_impression";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "";

    public static Connection getConnection() throws SQLException {
        try {
            // Chargement explicite du pilote JDBC
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Connexion à la base de données
            return DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (ClassNotFoundException e) {
            // Si le pilote JDBC n'est pas trouvé
            throw new SQLException("Le pilote JDBC n'a pas été trouvé", e);
        }
    }

    public static void closeConnection(Connection connection) {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                System.err.println("Erreur lors de la fermeture de la connexion : " + e.getMessage());
            }
        }
    }
}
