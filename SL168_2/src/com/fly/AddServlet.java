package com.fly;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddServlet
 */
@WebServlet("/AddServlet")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public AddServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("GB18030");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("GB18030");
		String name = request.getParameter("name");
		String price = request.getParameter("price");		
		String count = request.getParameter("count");
		String unit = request.getParameter("unit");
		String addr = request.getParameter("addr");
		
		out.println("����:" + name);
		out.println("�۸�:" + price);
		out.println("����:" + count);
		out.println("��λ:" + unit);
		out.println("��ַ:" + addr);
		
		out.flush();
		out.close();
	}

}
