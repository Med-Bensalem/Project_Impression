package com.example.dao;

import com.example.models.Role;
import java.util.List;

public interface RoleDao {
    List<Role> getAllRoles();
    Role getRoleById(int id);
    Role getRoleByName(String name);
    void addRole(Role role);
    void updateRole(Role role);
    void deleteRole(int id);
}
