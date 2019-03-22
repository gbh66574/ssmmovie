package com.entor.dao;




import java.util.List;

import com.entor.entity.User;

public interface UserDao extends BaseDao<User> {
	 public User Login(String username,String password);
	 public void addUser(User u);
	
}
