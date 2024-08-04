package com.DAO;

import com.entity.User;

public interface UserDAO {
    public boolean userRegister(User us);
    public boolean userLogin(String email,String password);

}
