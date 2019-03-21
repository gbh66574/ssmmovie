package com.entor.dao.impl;


import org.springframework.stereotype.Repository;

import com.entor.dao.MessageDao;
import com.entor.entity.Message;
@Repository("messageDao")
public class MessageDaoimpl  extends BaseDaoimpl<Message> implements MessageDao{

	
}
