package main.com.DAO;

import main.com.entity.BookDtls;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BookDAOImpl implements BookDAO {

    private Connection conn;


    public BookDAOImpl(Connection conn) {
        super();
        this.conn = conn;
    }

    @Override
    public boolean addbooks(BookDtls b) {
        boolean f = false;
        try {
            String sql = "Insert into book_dts(bookname,author,price,bookCategory,status,photo,email) values (?,?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, b.getBookname());
            ps.setString(2, b.getAuthor());
            ps.setString(3, b.getPrice());
            ps.setString(4, b.getBookCategory());
            ps.setString(5, b.getStatus());
            ps.setString(6, b.getPhoto());
            ps.setString(7, b.getEmail());

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
    public List<BookDtls> getAllBooks() {
        List<BookDtls> list = new ArrayList<BookDtls>();
        BookDtls b = null;

        try {
            String sql = "select * from book_dts";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                b = new BookDtls();
                b.setBookId(rs.getInt(1));
                b.setBookname(rs.getString(2));
                b.setAuthor(rs.getString(3));
                b.setPrice(rs.getString(4));
                b.setBookCategory(rs.getString(5));
                b.setStatus(rs.getString(6));
                b.setPhoto(rs.getString(7));
                b.setEmail(rs.getString(8));
                list.add(b);


            }

        } catch (Exception e) {
            e.printStackTrace();
        }


        return list;
    }

    @Override
    public BookDtls getBookById(int id) {
        BookDtls b = null;
        try {
            String sql = "Select * from book_dts where bookId=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                b = new BookDtls();
                b.setBookId(rs.getInt(1));
                b.setBookname(rs.getString(2));
                b.setAuthor(rs.getString(3));
                b.setPrice(rs.getString(4));
                b.setBookCategory(rs.getString(5));
                b.setStatus(rs.getString(6));
                b.setPhoto(rs.getString(7));
                b.setEmail(rs.getString(8));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return b;
    }

    @Override
    public boolean updateEditBook(BookDtls b) {
        boolean f = false;
        try {
            String sql = "update book_dts set bookname=?,author=?,price=?,status=? where bookId=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, b.getBookname());
            ps.setString(2, b.getAuthor());
            ps.setString(3, b.getPrice());
            ps.setString(4, b.getStatus());
            ps.setInt(5, b.getBookId());

            int i = ps.executeUpdate();

            if (i == 1) {
                f = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }


        return false;
    }

    @Override
    public boolean DeleteBooks(int id) {
        boolean f =false;
        try {
            String sql="delete from book_dts where bookid=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1,id);
            int i=ps.executeUpdate();
            if(i==1)
            {
                f=true;

            }
        } catch (Exception e) {
            e.printStackTrace();

        }


        return f;
    }
}
