package com.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.BookDao;
import com.vo.Book;

/**
 * Servlet implementation class BookServlet
 */

public class BookServlet extends HttpServlet {
	private static final long serialVersionUID = -5565840336525362453L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		HttpSession session = request.getSession();
		List<Book> list = (List)session.getAttribute("books");
		if("add".equals(command)) {
			String bookName = request.getParameter("bookName");
			String price = request.getParameter("price");
			String bookCount = request.getParameter("bookCount");
			String category = request.getParameter("category");
			String desc = request.getParameter("description");
			
			Book book = new Book();
			book.setBookName(bookName);
			book.setBookCount(Integer.valueOf(bookCount));
			book.setPrice(Double.valueOf(price));
			book.setCategory(category);
			book.setDescription(desc);
			if(list == null) {
				list = new ArrayList<Book>();
			}
			list.add(book);
			session.setAttribute("books", list);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}else if("save".equals(command)) {
			String info = "没有图书要保存！";
			if(list != null && list.size() > 0) {
				BookDao dao = new BookDao();
				dao.saveAllBooks(list);
				session.removeAttribute("books");
				info = "所有图书保存成功！";
			}
			request.setAttribute("info", info);
			request.getRequestDispatcher("result.jsp").forward(request, response);
		}
		
		
		
	}

}
