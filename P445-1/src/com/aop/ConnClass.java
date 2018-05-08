package com.aop;

import org.apache.log4j.Logger;

public abstract class ConnClass implements UserInterface {
	
	private static Logger logger = Logger
            .getLogger(AfterAdvice.class.getName());
	
	@Override
	public void getConn() {
		// TODO Auto-generated method stub

	}

	@Override
	public void executeInsert(String sql) {
		// TODO Auto-generated method stub

	}

	@Override
	public void closeConn() {
		// TODO Auto-generated method stub

	}

}
