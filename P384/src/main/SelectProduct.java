package main;

import java.util.Iterator;
import java.util.Set;

import org.hibernate.Session;

import com.factory.Factory;
import com.hibernate.HibernateInitialize;
import com.product.Product;

public class SelectProduct {

	public static void main(String[] args) {
		System.out.println("SelectProduct.main");
		Session session = null;
		try {
			session = HibernateInitialize.getSession();
			session.beginTransaction();
			Product product = (Product) session.get(Product.class, new Integer("1"));
			System.out.println("产品名称："+product.getName());
			System.out.println("产品价格："+product.getPrice()+"元");
			System.out.println("生产商："+product.getFactory().getFactoryName());
			
			System.out.println("一对多");
			Factory factory = (Factory) session.get(Factory.class, new Integer("1"));
			System.out.println("生产商："+factory.getFactoryName());
			Set<Product> products = factory.getProducts();
			for (Iterator<Product> it = products.iterator();it.hasNext();) {
				Product product2 = (Product) it.next();
				System.out.println("产品名称：" + product.getName()+"||产品价格："+product.getPrice());
			}
			session.getTransaction().commit();
		}catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}finally {
			HibernateInitialize.closeSession();
		}
		
		
	}

}
