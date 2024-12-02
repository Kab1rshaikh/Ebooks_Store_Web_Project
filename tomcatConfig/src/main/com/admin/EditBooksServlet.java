package main.com.admin;

import main.com.DAO.BookDAOImpl;
import main.com.DB.DBConnect;
import main.com.entity.BookDtls;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/editbooks")

public class EditBooksServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int id=Integer.parseInt(req.getParameter("id"));
            String bookname=req.getParameter("bname");
            String author=req.getParameter("author");
            String price= req.getParameter("price");
            String status=req.getParameter("bstatus");

            BookDtls b =new BookDtls();
            b.setBookId(id);
            b.setBookname(bookname);
            b.setAuthor(author);
            b.setPrice(price);
            b.setStatus(status);

            BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
            boolean f = dao.updateEditBook(b);
            HttpSession session=req.getSession();
            if(f=true)
            {
                session.setAttribute("succMsg","Book Updated Successfully!");
                resp.sendRedirect("admin/all_books.jsp");
            }
            else
            {
                session.setAttribute("failMsg","Something went wrong!");
                resp.sendRedirect("admin/all_books.jsp");

            }





        }
        catch(Exception e)

        {
        e.printStackTrace();
        }



    }
}
