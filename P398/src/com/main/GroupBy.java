package com.main;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

import com.hibernate.HibernateUtil;


public class GroupBy {

	public static void main(String[] args) {
		Session session = null;
		try {
			session = HibernateUtil.getSession();
			String hql = "select emp.sex,count(*) from Employee emp group by emp.sex";
			Query q = session.createQuery(hql);
			List emplist = q.list();
			Iterator it = emplist.iterator();
			while(it.hasNext()) {
				Object[] results = (Object[])it.next();
				System.out.print("员工性别: " + results[0] + "————");
                System.out.println("人数: " + results[1]);
			}
			
		}catch (Exception e) {
			// TODO: handle exception
		}finally {
			
		}
		
		
		
	}

}
