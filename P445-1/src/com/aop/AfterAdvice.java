package com.aop;

import java.lang.reflect.Method;
import java.util.logging.Logger;

import org.springframework.aop.AfterReturningAdvice;

public class AfterAdvice implements AfterReturningAdvice {
	
	private static Logger logger = Logger.getLogger(AfterAdvice.class.getName());
	
	@Override
	public void afterReturning(Object returnValue, Method method, Object[] arg2, Object target) throws Throwable {
		logger.info("After通知开始。。。。。。");
		if(method.getName().equals("executeInsert")) {
			if(target instanceof UserInterface) {
				UserInterface di=(UserInterface) target;
				di.closeConn(); 
			}
		}
	}

}
