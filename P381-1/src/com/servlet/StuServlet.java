package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.StuDao;
import com.vo.Student;

/**
 * Servlet implementation class StuServlet
 */

public class StuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StuServlet() {
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
		// TODO Auto-generated method stub
		String command = request.getParameter("command");
		StuDao dao = new StuDao();
		if ("find".equals(command)) {			//查询所有学生信息
			//查询所有学生信息
			List<Student> list = dao.findAllStudent();
			System.out.println("数据数量");
			System.out.println(list.size());
			Student stu = list.get(0);
			System.out.println(stu.getStuName());
			request.setAttribute("list", list);
			request.getRequestDispatcher("stu_list.jsp").forward(request,response);
		} else if ("delete".equals(command)) {	//批量删除学生信息
			//获取学生id
			String[] ids = request.getParameterValues("id");
			if(ids != null && ids.length > 0){
				dao.deleteStudent(ids);			//批量删除学生信息
			}
			request.getRequestDispatcher("StuServlet?command=find").forward(request,response);
		}
	}

}
