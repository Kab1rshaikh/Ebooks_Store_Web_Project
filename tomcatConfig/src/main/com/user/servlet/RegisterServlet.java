package main.com.user.servlet;

import main.com.DAO.UserDAO;
import main.com.DAO.UserDAOImpl;
import main.com.DB.DBConnect;
import main.com.entity.User;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/register")
public class RegisterServlet extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String name=req.getParameter("fname");
            String email=req.getParameter("email");
            String phno=req.getParameter("phno");
            String password=req.getParameter("password");
            String check=req.getParameter("check");

            //System.out.println(name+" "+email+" "+phno+" "+password+" "+check);
            User us= new User();
            us.setname(name);
            us.setEmail(email);
            us.setPhno(phno);
            us.setPassword(password);

            HttpSession session= req.getSession();

            if(check!=null)
            {
                UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
                boolean f = dao.userRegister(us);
                if(f){
                    //System.out.println("Account Created");
                    session.setAttribute("succMsg","Account Created Successfully...");
                    resp.sendRedirect("register.jsp");
                }
                else{
                    //System.out.println("Something went wrong");
                    session.setAttribute("failMsg","Something went Wrong...");
                    resp.sendRedirect("register.jsp");
                }
            }
            else
            {
                //System.out.println("Please agree to the terms and Conditions");
                session.setAttribute("failMsg","please check the terms and conditions");
                resp.sendRedirect("register.jsp");
            }
        }catch (Exception e){
            e.printStackTrace();

        }
    }
}
