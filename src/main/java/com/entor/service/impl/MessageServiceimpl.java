package com.entor.service.impl;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.entor.dao.MessageDao;
import com.entor.dao.MovieDao;
import com.entor.entity.Message;
import com.entor.service.MessageService;
import com.entor.vo.MessageVo;

@Service("messageService")
public class MessageServiceimpl extends BaseServiceimpl<Message> implements MessageService {
	@Resource
	private MessageDao messageDao;
	@Override
	public List<MessageVo> aqueryByPage(int currntPage, int pageSize) {
		Map<String, Integer>map=new HashMap<String,Integer>();
		map.put("start", currntPage*pageSize);
		map.put("b", (currntPage-1)*pageSize);
		
		return messageDao.aqueryByPage(map);
	}

	
	
}
