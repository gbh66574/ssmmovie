package com.entor.dao;

import com.entor.entity.Conservator;

public interface ConservatorDao extends BaseDao<Conservator>{
	 public Conservator Login(String username,String password);

}
