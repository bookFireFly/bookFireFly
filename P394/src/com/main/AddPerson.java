package com.main;

import org.hibernate.Session;

import com.hibernate.HibernateInitialize;
import com.person.Staffer;
import com.person.Student;

public class AddPerson {
	
	public static void main(String[] args) {
		Session session = null;
		try {
			session = HibernateInitialize.getSession();
			session.beginTransaction();
			Student student = new Student();
			student.setName("小明");
			student.setAge(12);
			student.setSex("男");
			student.setSchool("明日希望小学");
			session.save(student);//保存学生信息
			Staffer staffer = new Staffer();
			staffer.setName("小红");
			staffer.setAge(25);
			staffer.setSex("女");
			staffer.setCompany("明日科技");
			session.save(staffer);//保存职员信息
			session.getTransaction().commit();// 事务提交
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}finally {
			HibernateInitialize.closeSession();
		}
		
		
	}
}
