package com.main;

import org.hibernate.Session;

import com.hibernate.HibernateInitialize;
import com.product.Product;

public class DeleteProduct {

	public static void main(String[] args) {
		Session session = null;			//声明Session对象
		try {
			//Hibernate的持久化操作
			session = HibernateInitialize.getSession();//获取Session
			Product product = (Product)session.get(Product.class, new Integer("4"));//装载对象
			session.beginTransaction();
			session.delete(product);//删除持久化信息
			session.flush();//强制刷新提交
			session.getTransaction().commit();
		} catch (Exception e) {
			System.out.println("对象删除失败");
			e.printStackTrace();
		} finally{
			HibernateInitialize.closeSession();//关闭Session
		}
	}
}
