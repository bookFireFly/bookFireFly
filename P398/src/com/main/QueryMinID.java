package com.main;

import java.util.Iterator;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

import com.employee.Employee;
import com.hibernate.HibernateUtil;


public class QueryMinID {

	public static void main(String[] args) {
		Session session = null;
		try {
			session = HibernateUtil.getSession();
			String hql = "from Employee emp where emp.id = (select min(id) from Employee)";
			Query q = session.createQuery(hql);
			List<Employee> list = q.list();
			for(Employee emp : list) {
				System.out.println("ID值最小的员工为： " + emp.getName());
                System.out.println("其ID值为： " + emp.getId());
			}
		}catch (HibernateException e) {
			e.printStackTrace();
		}finally{
			 HibernateUtil.closeSession();
		}
		
		
	}

}
