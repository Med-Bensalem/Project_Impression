package com.example.dao;

import java.util.List;

import com.example.models.Impression;

public interface ImpressionDao {
	   List<Impression> getAllImpressions();
	    Impression getImpressionById(int id);
	    void addImpression(Impression impression);
	    void updateImpression(Impression impression);
	    void deleteImpression(int id);
	    List<Impression> getImpressionsByEnseignantId(int enseignantId);
		void updateImpressionState(int id, String state);
		List<Impression> getAllImpressionslog();
}
