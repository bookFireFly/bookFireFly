package com;

import javax.servlet.ServletRequest;
import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpServlet;

/**
 * Application Lifecycle Listener implementation class Linstenerlocalhost
 *
 */
@WebListener
public class Linstenerlocalhost extends HttpServlet implements ServletRequestListener, ServletRequestAttributeListener {
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Linstenerlocalhost() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletRequestListener#requestDestroyed(ServletRequestEvent)
     */
    public void requestDestroyed(ServletRequestEvent sre)  { 
         System.out.println("请求销毁");
    }

	/**
     * @see ServletRequestAttributeListener#attributeRemoved(ServletRequestAttributeEvent)
     */
    public void attributeRemoved(ServletRequestAttributeEvent srae)  { 
    	System.out.print("request attrbite removed >>");
        System.out.println(srae.getName()+"="+srae.getValue());
    }

	/**
     * @see ServletRequestListener#requestInitialized(ServletRequestEvent)
     */
    public void requestInitialized(ServletRequestEvent sre)  { 
        System.out.println("请求初始化");
        ServletRequest sr = sre.getServletRequest();
        System.out.println("远程机器的IP:"+sr.getRemoteAddr());
        System.out.println("本地机器的IP:"+sr.getLocalAddr());
        if(sr.getRemoteAddr().equals(sr.getLocalAddr())) {
        	sr.setAttribute("login", "true");
        }else {
        	sr.setAttribute("login", "false");
        }
    }

	/**
     * @see ServletRequestAttributeListener#attributeAdded(ServletRequestAttributeEvent)
     */
    public void attributeAdded(ServletRequestAttributeEvent srae)  { 
        System.out.print("request attrbite add >>"); 
    	System.out.println(srae.getName()+"="+srae.getValue());
    }

	/**
     * @see ServletRequestAttributeListener#attributeReplaced(ServletRequestAttributeEvent)
     */
    public void attributeReplaced(ServletRequestAttributeEvent srae)  { 
    	System.out.print("request attrbite replaced >>");
        System.out.println(srae.getName()+"="+srae.getValue());
    }
	
}
