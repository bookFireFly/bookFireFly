package com.main;

import org.hibernate.Session;

import com.hibernate.HibernateInitialize;
import com.product.Product;

public class AddProduct {
	public static void main(String[] args) {
		Session session = null;
		Product product = new Product();
		product.setName("Java ");//设置产品名称
		product.setPrice(75.00);//设置产品价格
		product.setFactory("firefly");//设置生产商
		product.setRemark("test");//无
		try {
			session = HibernateInitialize.getSession();
			session.beginTransaction();
			session.save(product);
			session.getTransaction().commit();
		}catch (Exception e) {
			// TODO: handle exception
			session.getTransaction().rollback();
			System.out.println("数据添加失败");
			e.printStackTrace();
		}finally {
			HibernateInitialize.closeSession();
		}
	}
}
