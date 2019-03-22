package com.entor.service;


import java.util.List;

import com.entor.entity.Message;
import com.entor.vo.MessageVo;

public interface MessageService extends BaseService<Message> {

	public List<MessageVo> aqueryByPage(int currntPage,int pageSize);
	
}
