package com.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

import com.hibernate.HibernateUtil;

/**
 * Servlet implementation class QueryEmployee
 */

public class QueryEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QueryEmployee() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Session session = null;
		List emplist = new ArrayList();
		try {
			session = HibernateUtil.getSession();
			String hql = "from Employee emp where emp.sex='男'";
			Query q = session.createQuery(hql);
			emplist = q.list();
			System.out.println("QueryEmployee");
			System.out.println(emplist.hashCode());
		}catch (HibernateException e) {
			e.printStackTrace();
            System.out.println("查询失败");
		}finally {
			HibernateUtil.closeSession();
		}
		request.setAttribute("emplist", emplist);
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/index.jsp");
		rd.forward(request, response);
	}

}
