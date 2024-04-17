package com.example.utilis;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCUtils {
	public static Connection getConnection() {
	    Connection connection = null;

	    try {
	        // Chargement explicite du pilote JDBC
	        Class.forName("com.mysql.cj.jdbc.Driver");

	        // Connexion à la base de données
	        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestion_impression", "root", "");
	    } catch (SQLException | ClassNotFoundException e) {
	        e.printStackTrace();
	    }
	    return connection;
	}

}
