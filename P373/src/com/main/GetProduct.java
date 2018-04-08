package com.main;



import org.apache.jasper.tagplugins.jstl.core.Catch;
import org.hibernate.Session;

import com.hibernate.HibernateInitialize;
import com.product.Product;

public class GetProduct {
	
	public static void main(String[] args) {
		Session session = null;
		try {
			session = HibernateInitialize.getSession();
			Product product = (Product) session.load(Product.class, new Integer("2"));
			System.out.println("产品ID："+product.getId());
			System.out.println("产品名称："+product.getName());
			System.out.println("产品价格："+product.getPrice()+"元");
			System.out.println("生产厂商："+product.getFactory());
			System.out.println("产品备注："+product.getRemark());
		}catch (Exception e) {
			System.out.println("对象装载失败");
			e.printStackTrace();
		}finally {
			HibernateInitialize.closeSession();//关闭Session
		}
		
	}
	
		
	
}
