package com.dao;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.user.User;

public class UserDAO extends HibernateDaoSupport  {
    //保存用户的方法
    public void insert(User user){
        this.getHibernateTemplate().save(user);
    }
}
