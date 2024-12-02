package main.com.DAO;

import main.com.entity.User;

public interface UserDAO {
    public boolean userRegister(User us);
    public boolean userLogin(String email,String password);

}
