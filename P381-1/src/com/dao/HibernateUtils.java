package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtils {
	private static SessionFactory factory; // 定义Session工厂
	
	
	// 静态块用于实例化Session工厂
	static {
		System.out.println("HibernateUtils.static");
		Configuration cfg = new Configuration().configure();
		factory = cfg.buildSessionFactory();
	}

	public static SessionFactory getSessionFactory() {
		System.out.println("HibernateUtils.getSessionFactory");
		return factory;
	}

	public static Session getSession() {
		System.out.println("HibernateUtils.getSession");
		return factory.openSession();
	}

	public static void closeSession(Session session) {
		System.out.println("HibernateUtils.closeSession");
		if (session != null) {
			if (session.isOpen()) {
				session.close();
			}
		}
	}
}
