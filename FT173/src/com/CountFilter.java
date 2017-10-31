package com;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

/**
 * Servlet Filter implementation class CountFilter
 */
//ver:����
//dubug:ע�͵�@WebFilter("/CountFilter"),ȥ��ע��
@WebFilter("/CountFilter")
public class CountFilter implements Filter {
	
	private int count;
	
    /**
     * Default constructor. 
     */
    public CountFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		count++;
		HttpServletRequest req = (HttpServletRequest) request;
		ServletContext context = req.getSession().getServletContext();
		context.setAttribute("count", count);
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		String param = fConfig.getInitParameter("count");
		count = Integer.valueOf(param);
	}

}
