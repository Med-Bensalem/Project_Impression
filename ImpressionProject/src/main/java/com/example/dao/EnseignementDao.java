package com.example.dao;

import java.util.List;
import com.example.models.Enseignement;

public interface EnseignementDao {
    void addEnseignement(Enseignement enseignement);
    List<Enseignement> getEnseignementsByEnseignantId(int enseignantId);
    // Autres méthodes CRUD selon les besoins
	void saveEnsMatieres(int user_id, String[] selectedSubjects);
	List<Integer> getUserMatieresIds(int userId);
}
