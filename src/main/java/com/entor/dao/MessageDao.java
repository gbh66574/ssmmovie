package com.entor.dao;


import java.util.List;
import java.util.Map;

import com.entor.entity.Message;
import com.entor.vo.MessageVo;

public interface MessageDao extends BaseDao<Message> {

	public List<MessageVo> aqueryByPage(Map<String, Integer>map);

}
