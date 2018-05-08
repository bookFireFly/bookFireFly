package com.transaction;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;

import org.springframework.jdbc.datasource.DataSourceUtils;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.TransactionCallback;
import org.springframework.transaction.support.TransactionTemplate;

public class TransactionExample {
	DataSource dataSource;
	PlatformTransactionManager transactionManager;
	TransactionTemplate transactionTemplate;
	public DataSource getDataSource() {
		return dataSource;
	}
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	public PlatformTransactionManager getTransactionManager() {
		return transactionManager;
	}
	public void setTransactionManager(PlatformTransactionManager transactionManager) {
		this.transactionManager = transactionManager;
	}
	public TransactionTemplate getTransactionTemplate() {
		return transactionTemplate;
	}
	public void setTransactionTemplate(TransactionTemplate transactionTemplate) {
		this.transactionTemplate = transactionTemplate;
	}
	public void transactionOperation() {
		transactionTemplate.execute(new TransactionCallback() {

			@Override
			public Object doInTransaction(TransactionStatus status) {
				Connection conn = DataSourceUtils.getConnection(dataSource);
				try {
					Statement stmt = conn.createStatement();
					stmt.execute("insert into tb_user(name,age,sex) values('小强2','26','男')");
					int a = 0;
					a=9/a;
					stmt.execute("insert into tb_user(name,age,sex) values('小红2','26','女')");
					System.out.println("操作执行成功！");
				} catch (SQLException e) {
					transactionManager.rollback(status);
					System.out.println("操作执行失败，事务回滚！");
                    System.out.println("原因："+e.getMessage());
				}
				
				return null;
			}
			
		
				
		});
	}
}
