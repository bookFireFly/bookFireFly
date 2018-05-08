package com.aop;

import java.lang.reflect.Method;
import java.util.logging.Logger;

import org.springframework.aop.MethodBeforeAdvice;

public class BeforeAdivsor implements MethodBeforeAdvice {

	private static Logger logger = Logger.getLogger(AfterAdvice.class.getName());
	
	@Override
	public void before(Method arg0, Object[] arg1, Object arg2) throws Throwable {
		logger.info("Before通知开始。。。。。。。");
		if(arg2 instanceof UserInterface) {
			UserInterface di = (UserInterface) arg2;
			di.getConn();
		}
		 ConnClass ci = (ConnClass) arg2;
	}

}
