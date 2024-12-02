package main.com.admin;

import main.com.DAO.BookDAOImpl;
import main.com.DB.DBConnect;
import main.com.entity.BookDtls;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;

@WebServlet("/add_books")
@MultipartConfig
public class BooksAdd extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String bookname = req.getParameter("bname");
            String author = req.getParameter("author");
            String price = req.getParameter("price");
            String category = req.getParameter("btype");
            String status = req.getParameter("bstatus");
            Part part = req.getPart("bimg");
            String filename = part.getSubmittedFileName();

            BookDtls b = new BookDtls(bookname, author, price, category, status, filename, "admin");

            BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());


            boolean f = dao.addbooks(b);
            HttpSession session = req.getSession();
            if (f) {
                String path = getServletContext().getRealPath("") + "book";
                File file1 = new File(path);
                part.write(path + File.separator + filename);
            /*The code retrieves the real path of the web application directory,
             creates a File object pointing to the book sub-directory, and
             then saves the uploaded file (part) to that directory using its original filename.
             */

                session.setAttribute("succMsg", "Book Added Successfully");
                resp.sendRedirect("admin/add_books.jsp");

            } else {
                session.setAttribute("failMsg", "Something went wrong!");
                resp.sendRedirect("admin/add_books.jsp");

            }


        } catch (Exception e) {

        }
    }
}
