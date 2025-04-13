package main.com.DAO;

import main.com.entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
    public User userLogin(String email, String password) {
        User us=null;
        String sql = "SELECT * FROM user WHERE email = ? AND password = ?";
        try{
            PreparedStatement ps= conn.prepareStatement(sql);
            ps.setString(1,email);
            ps.setString(2,password);

            System.out.println("PreparedStatement Email: " + ps.toString());

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                //System.out.println("User found: " + ((ResultSet) rs).getString("name"));
                us=new User();
                us.setId(rs.getInt(1));
                us.setname(rs.getString(2));
                us.setEmail(rs.getString(3));
                us.setPhno(rs.getString(4));
                us.setPassword(rs.getString(5));
                us.setAddress(rs.getString(6));
                us.setLandmark(rs.getString(7));
                us.setCity(rs.getString(8));
                us.setState(rs.getString(9));
                us.setPincode(rs.getString(10));
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        return us;
    }

}
