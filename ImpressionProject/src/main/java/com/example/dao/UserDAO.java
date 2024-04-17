package com.example.dao;

import com.example.models.User;
import com.example.utilis.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
    private final String INSERT_USER_SQL = "INSERT INTO users (username, password) VALUES (?, ?)";
    private final String SELECT_USER_BY_USERNAME_PASSWORD_SQL = "SELECT * FROM users WHERE username = ? AND password = ?";

    public void addUser(User user) throws SQLException {
        try (Connection connection = JDBCUtils.getConnection();
             PreparedStatement statement = connection.prepareStatement(INSERT_USER_SQL)) {
            statement.setString(1, user.getUsername());
            statement.setString(2, user.getPassword());
            statement.executeUpdate();
        }
    }

    public User getUserByUsernameAndPassword(String username, String password) throws SQLException {
        try (Connection connection = JDBCUtils.getConnection();
            PreparedStatement statement = connection.prepareStatement(SELECT_USER_BY_USERNAME_PASSWORD_SQL)) {
            statement.setString(1, username);
            statement.setString(2, password);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    User user = new User();
                    user.setUsername(resultSet.getString("username"));
                    user.setPassword(resultSet.getString("password"));
                    return user;
                }
            }
        }
        return null;
    }
}
