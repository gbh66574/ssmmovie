package com.entor.service.impl;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.entor.dao.ConservatorDao;
import com.entor.entity.Conservator;
import com.entor.service.ConservatorService;

@Service("conservatorService")
public class ConservatorServiceimpl extends BaseServiceimpl<Conservator> implements ConservatorService {

	 @Resource
	    private ConservatorDao conservatorDao;

	    
	    public Conservator checkLogin(String username, String password) {
	       
	    	Conservator conservator = conservatorDao.Login(username, password);
	        if (conservator != null && conservator.getPassword().equals(password)) {
	            return conservator;
	        }
	        return null;
	    }
}
