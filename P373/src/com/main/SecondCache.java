package com.main;

import org.hibernate.Session;

import com.hibernate.HibernateInitialize;
import com.product.Product;

public class SecondCache {
	
	public static void main(String[] args) {
		Session session = null;
		Session session2 = null;
		try {
			session = HibernateInitialize.getSession();
			session2 = HibernateInitialize.getSession();
			Product product = (Product) session.get(Product.class, new Integer("1"));//装载对象
			System.out.println("第一个Session装载对象");
			Product product2 = (Product) session2.get(Product.class, new Integer("1"));//装载对象
			System.out.println("第二个Session装载对象");
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			HibernateInitialize.closeSession();//关闭Session
		}
	}
}
