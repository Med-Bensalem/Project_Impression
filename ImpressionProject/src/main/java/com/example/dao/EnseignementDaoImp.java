package com.example.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.example.models.Enseignement;
import com.example.utilis.JDBCUtils;

public class EnseignementDaoImp implements EnseignementDao {
    private static final String INSERT_ENSEIGNEMENT = "INSERT INTO enseignement (enseignant_id, matiere_id) VALUES (?, ?)";
    private static final String SELECT_ENSEIGNEMENTS_BY_ENSEIGNANT_ID = "SELECT * FROM enseignement WHERE enseignant_id=?";

    @Override
    public void addEnseignement(Enseignement enseignement) {
        try (Connection connection = JDBCUtils.getConnection();
             PreparedStatement statement = connection.prepareStatement(INSERT_ENSEIGNEMENT)) {
            statement.setInt(1, enseignement.getEnseignantId());
            statement.setInt(2, enseignement.getMatiereId());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Enseignement> getEnseignementsByEnseignantId(int enseignantId) {
        List<Enseignement> enseignements = new ArrayList<>();
        try (Connection connection = JDBCUtils.getConnection();
             PreparedStatement statement = connection.prepareStatement(SELECT_ENSEIGNEMENTS_BY_ENSEIGNANT_ID)) {
            statement.setInt(1, enseignantId);
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    Enseignement enseignement = new Enseignement();
                    enseignement.setEnseignantId(resultSet.getInt("enseignant_id"));
                    enseignement.setMatiereId(resultSet.getInt("matiere_id"));
                    enseignements.add(enseignement);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return enseignements;
    }

    // Implémentez d'autres méthodes CRUD si nécessaire
}
