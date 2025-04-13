package main.com.user.servlet;

import main.com.DAO.UserDAOImpl;
import main.com.DB.DBConnect;
import main.com.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
            HttpSession session = req.getSession();
            String email = req.getParameter("email");
            String password = req.getParameter("password");

            System.out.println("Email: " + email);
            System.out.println("Password: " + password);

            if("admin@gmail.com".equals(email) && "admin".equals(password)){
                User us = new User();
                us.setname("Admin");
                session.setAttribute("userobj",us);
                resp.sendRedirect("admin/home.jsp");
            }
            else {
                User us=dao.userLogin(email,password);
                if (us!=null) {
                    session.setAttribute("userobj", us); // Store user's email or ID in session
                    System.out.println("Logged in");
                    session.setAttribute("succMsg", "Logged in successfully.");
                    resp.sendRedirect("home.jsp");  // Redirect to home page or dashboard
                } else {
                    System.out.println("Invalid credentials");
                    session.setAttribute("failMsg", "Invalid email or password.");
                    resp.sendRedirect("login.jsp");  // Redirect back to login page
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
