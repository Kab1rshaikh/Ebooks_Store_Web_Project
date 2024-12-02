package main.com.DAO;

import main.com.entity.BookDtls;

import java.util.List;

public interface BookDAO {
    public boolean addbooks(BookDtls b);

    public List<BookDtls> getAllBooks();

    public BookDtls getBookById(int id);

    public  boolean updateEditBook(BookDtls b);

    public  boolean DeleteBooks(int id);

}
