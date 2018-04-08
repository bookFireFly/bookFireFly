package com.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.cfg.Configuration;

public class HibernateSessionFactory {

	private static String CONFIG_FILE_LOCATION = "/hibernate.cfg.xml";
	private static final ThreadLocal<Session> threadLocal = new ThreadLocal<Session>();
	private  static Configuration configuration = new Configuration();
	private static org.hibernate.SessionFactory sessionFactory;
	private static String configFile = CONFIG_FILE_LOCATION;
	
	static {
    	try {
			System.out.println("HibernateSessionFactory.static");
    		configuration.configure(configFile);
			sessionFactory = configuration.buildSessionFactory();
		} catch (Exception e) {
			System.err
					.println("%%%% Error Creating SessionFactory %%%%");
			e.printStackTrace();
		}
    }
	
	private HibernateSessionFactory() {
    }
	
	public static Session getSession() throws HibernateException {
        Session session = (Session) threadLocal.get();
        System.out.println("HibernateSessionFactory.getSession");
		if (session == null || !session.isOpen()) {
			if (sessionFactory == null) {
				rebuildSessionFactory();
			}
			session = (sessionFactory != null) ? sessionFactory.openSession()
					: null;
			threadLocal.set(session);
		}

        return session;
    }
	
	public static void rebuildSessionFactory() {
		try {
			System.out.println("HibernateSessionFactory.rebuildSessionFactory");
			configuration.configure(configFile);
			sessionFactory = configuration.buildSessionFactory();
		} catch (Exception e) {
			System.err
					.println("%%%% Error Creating SessionFactory %%%%");
			e.printStackTrace();
		}
	}
	
	public static void closeSession() throws HibernateException {
        Session session = (Session) threadLocal.get();
        threadLocal.set(null);
        System.out.println("HibernateSessionFactory.closeSession");
        if (session != null) {
            session.close();
        }
    }
	
	public static org.hibernate.SessionFactory getSessionFactory() {
		System.out.println("HibernateSessionFactory.getSessionFactory");
		return sessionFactory;
	}
	
	public static void setConfigFile(String configFile) {
		HibernateSessionFactory.configFile = configFile;
		sessionFactory = null;
		System.out.println("HibernateSessionFactory.setConfigFile");
	}
	
	public static Configuration getConfiguration() {
		System.out.println("HibernateSessionFactory.getConfiguration");
		return configuration;
	}
	
}
