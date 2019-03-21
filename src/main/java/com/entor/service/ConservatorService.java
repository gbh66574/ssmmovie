package com.entor.service;



import com.entor.entity.Conservator;

public interface ConservatorService extends BaseService<Conservator> {
	  public Conservator checkLogin(String username, String password);
}
