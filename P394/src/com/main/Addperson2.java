package com.main;

import org.hibernate.Session;

import com.hibernate.HibernateInitialize;

public class Addperson2 {

	public static void main(String[] args) {
		Session session = null;
		
		try {
			session = HibernateInitialize.getSession();
			session.beginTransaction();
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			
		}
		
		
	}

}
