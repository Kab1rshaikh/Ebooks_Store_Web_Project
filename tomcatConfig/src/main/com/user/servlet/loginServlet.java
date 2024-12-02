package main.com.user.servlet;

import main.com.DAO.UserDAOImpl;
import main.com.DB.DBConnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class loginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String email = req.getParameter("email");
            String password = req.getParameter("password");

            UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
            boolean isValidUser = dao.userLogin(email, password);

            HttpSession session = req.getSession();

            if (isValidUser) {
                session.setAttribute("email", email); // Store user's email or ID in session
                System.out.println("Logged in");
                session.setAttribute("succMsg", "Logged in successfully.");
                resp.sendRedirect("index.jsp");  // Redirect to home page or dashboard
            } else {
                System.out.println("Invalid credentials");
                session.setAttribute("failMsg", "Invalid email or password.");
                resp.sendRedirect("login.jsp");  // Redirect back to login page
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
