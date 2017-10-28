package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalculateServlet
 */
@WebServlet("/CalculateServlet")
public class CalculateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public CalculateServlet() {
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
		response.setContentType("text/html");
		response.setCharacterEncoding("GB18030");
		PrintWriter out = response.getWriter();
//		request.setCharacterEncoding("GB18030");
		double firstNum = Double.valueOf(request.getParameter("firstNum"));
		double secondNum = Double.valueOf(request.getParameter("secondNum"));
		String operator = request.getParameter("operator");
		double result = 0;
		if ("+".equals(operator)) {
			result = firstNum + secondNum;
		}else if("-".equals(operator)) {
			result = firstNum - secondNum;
		}else if("*".equals(operator)) {
			result = firstNum * secondNum;
		}else if("/".equals(operator)) {
			result = firstNum / secondNum;
		}
		out.println(firstNum + "" + operator + "" + secondNum + " = " + result);
		out.println("<br><a href='index.jsp'>·µ»Ø</a><br>");
		out.flush();
		out.close();
	}

}
