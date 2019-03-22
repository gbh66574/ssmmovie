package com.entor.service;


import java.util.List;

import com.entor.entity.User;

public interface UserService extends BaseService<User> {
	
    public User checkLogin(String username, String password);
    public void addUser(User u);
	
}
