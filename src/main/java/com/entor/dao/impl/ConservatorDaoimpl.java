package com.entor.dao.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.entor.dao.ConservatorDao;
import com.entor.entity.Conservator;
import com.entor.entity.User;
@Repository("conservatorDao")
public class ConservatorDaoimpl extends BaseDaoimpl<Conservator> implements ConservatorDao{

	@Override
	public Conservator Login(String username, String password) {
		Map<String, String>map=new HashMap<>();
		map.put("username", username);
		map.put("password", password);
		return getSqlSession().selectOne("Conservator.login",map);
		}
}
