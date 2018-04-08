package com.dao;

import java.util.List;

import org.hibernate.Session;

import com.vo.Book;

public class BookDao {
	
	public void saveAllBooks(List<Book> books) {
		Session session = null;
		if (books != null && books.size() > 0) {
			try {
				session = HibernateUtils.getSession();
				session.beginTransaction();	
				Book book = null;
				for (int i = 0; i < books.size(); i++) {
					book = (Book)books.get(i);	
					session.save(book);
				}
				session.getTransaction().commit();
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				session.getTransaction().rollback();
			}finally {
				HibernateUtils.closeSession(session);
			}
		}
	}
	
	
}
