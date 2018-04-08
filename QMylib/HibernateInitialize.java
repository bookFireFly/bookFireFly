package com.hibernate;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateInitialize {
	private static final ThreadLocal<Session> threadLocal = new ThreadLocal<Session>();
	private static SessionFactory sessionFactory = null;
	
	static {
		System.out.println("HibernateInitialize.static");
		try {
			Configuration cfg = new Configuration().configure();
			sessionFactory = cfg.buildSessionFactory();
		}catch (Exception e) {
			// TODO: handle exception
			System.err.println("创建会话工厂失败");
			e.printStackTrace();
		}
		
	}
	
	public static Session getSession() throws HibernateException{
		System.out.println("HibernateInitialize.getSession");
		Session session = (Session)threadLocal.get();
		if(session == null || !session.isOpen()) {
			if(sessionFactory == null) {
				rebuildSessionFactory();
			}
			session = (sessionFactory !=null) ? sessionFactory.openSession() : null ;
			threadLocal.set(session);
		}
		return session;
	}

	private static void rebuildSessionFactory() {
		System.out.println("HibernateInitialize.rebuildSessionFactory");
		// TODO Auto-generated method stub
		try {
			Configuration cfg = new Configuration().configure();
			sessionFactory = cfg.buildSessionFactory();
		}catch (Exception e) {
			// TODO: handle exception
			System.err.println("创建会话工厂失败");
			e.printStackTrace();
		}
	}

	public static SessionFactory getSessionFactory() {
		System.out.println("HibernateInitialize.getSessionFactory");
		return sessionFactory;
	}
	
	public static void closeSession() throws HibernateException{
		System.out.println("HibernateInitialize.closeSession");
		Session session = (Session) threadLocal.get();
		threadLocal.set(null);
		if (session != null) {
			session.close();
		}
	}
}
