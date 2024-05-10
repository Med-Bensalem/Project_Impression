package com.example.dao;

import java.util.List;

import com.example.models.Group;
import com.example.models.Matiere;

public interface GroupDao {
    List<Group> getAllGroups();
    Group getGroupById(int id);
    void addGroup(Group matiere);
    void updateGroup(Group matiere);
    void deleteGroup(int id);
}
