package com.entor.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.entor.dao.UserDao;
import com.entor.entity.User;
import com.entor.service.UserService;

@Service("userService")
public class UserServiceimpl extends BaseServiceimpl<User> implements UserService {
	 @Resource
	    private UserDao userDao;

	    
	    public User checkLogin(String username, String password) {
	       
	        User user = userDao.Login(username, password);
	        if (user != null && user.getPassword().equals(password)) {
	            return user;
	        }
	        return null;
	    }

	
}
