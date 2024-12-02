package main.com.DAO;

import main.com.entity.User;
import com.sun.xml.internal.ws.policy.EffectiveAlternativeSelector;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAOImpl implements main.com.DAO.UserDAO {
    private Connection conn;

    public UserDAOImpl(Connection conn) {
        super();
        this.conn = conn;
    }


    @Override
    public boolean userRegister(User us) {
        boolean f = false;
        String sql = "insert into user(name,email,phno,password) values (?,?,?,?)";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, us.getName());
            ps.setString(2, us.getEmail());
            ps.setString(3, us.getPhno());
            ps.setString(4, us.getPassword());

            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }


        } catch (Exception e) {
            e.printStackTrace();

        }
        return f;
    }

    @Override
    public boolean userLogin(String email, String password) {
        boolean f=false;
        String sql = "SELECT email, password FROM user WHERE email = ? AND password = ?";
        try{
            PreparedStatement ps= conn.prepareStatement(sql);
            ps.setString(1,email);
            ps.setString(2,password);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                //System.out.println("User found: " + ((ResultSet) rs).getString("name"));
                f=true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return f;
    }

}
