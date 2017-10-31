package com;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

import org.omg.CORBA.Request;



/**
 * Servlet Filter implementation class WordFilter
 */
//@WebFilter("/WordFilter")
public class WordFilter implements Filter {
	private String words[];
	private String encoding;
    /**
     * Default constructor. 
     */
    public WordFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		this.words = null;
		this.encoding = null;
	}
	
	class Request extends HttpServletRequestWrapper{

		public Request(HttpServletRequest request) {
			super(request);
			// TODO Auto-generated constructor stub
		}

		@Override
		public String getParameter(String name) {
			// TODO Auto-generated method stub
			return filter(super.getRequest().getParameter(name));
		}


		@Override
		public String[] getParameterValues(String name) {
			String[] values = super.getRequest().getParameterValues(name);
			for (int i = 0; i < values.length; i++) {
				values[i] = filter(values[i]);
			}
			return values;
		}
		
		
	}
	
	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		if (encoding != null) {
			request.setCharacterEncoding(encoding);
			request = new Request((HttpServletRequest) request);
			response.setContentType("text/html;charset="+encoding);
		}
		chain.doFilter(request, response);
	}



	public String filter(String param) {
		if (words != null && words.length>0) {
			for (int i = 0; i < words.length; i++) {
				if(param.indexOf(words[i]) != -1) {
					param = param.replaceAll(words[i], "****");
				}
			}
		}
		return param;
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		encoding = fConfig.getInitParameter("encoding");
		words = new String[] {"Ôã¸â","»ìµ°"};
		
	}

}
