package com.entor.dao.impl;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.entor.dao.MessageDao;
import com.entor.entity.Message;
import com.entor.vo.MessageVo;
@Repository("messageDao")
public class MessageDaoimpl  extends BaseDaoimpl<Message> implements MessageDao{

	@Override
	public List<MessageVo> aqueryByPage(Map<String, Integer> map) {
		
		return getSqlSession().selectList(Message.class.getSimpleName()+".queryByPage",map);
	}

	
}
