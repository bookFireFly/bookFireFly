package com.main;

import org.hibernate.Session;

import com.hibernate.HibernateInitialize;
import com.people.People;

public class Manger {

	public static void main(String[] args) {
		Session session = null;
		
		try {
			session = HibernateInitialize.getSession();
			session.beginTransaction();
			People people = (People)session.load(People.class, new Integer("1"));
			session.delete(people);
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}finally {
			HibernateInitialize.closeSession();
		}
		
		
	}

}
