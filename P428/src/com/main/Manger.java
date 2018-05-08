package com.main;

import org.springframework.aop.framework.ProxyFactory;

import com.log.LoggerExecute;
import com.target.Target;

public class Manger {

	public static void main(String[] args) {
        Target target = new Target();                 //创建目标对象
        ProxyFactory di=new ProxyFactory();
        di.addAdvice(new LoggerExecute());
        di.setTarget(target);
        Target proxy=(Target)di.getProxy();
        proxy.execute("AOP的简单实现");               //代理执行execute()方法
    } 

}

