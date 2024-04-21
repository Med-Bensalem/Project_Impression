package com.example.dao;

import java.util.List;
import com.example.models.Matiere;

public interface MatiereDao {
    List<Matiere> getAllMatieres();
    Matiere getMatiereById(int id);
    void addMatiere(Matiere matiere);
    void updateMatiere(Matiere matiere);
    void deleteMatiere(int id);
}
