package com.entor.service.impl;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.entor.dao.OrderDao;
import com.entor.entity.Order;
import com.entor.service.OrderService;
import com.entor.vo.OrderVo;

@Service("orderService")
public class OrderServiceimpl extends BaseServiceimpl<Order> implements OrderService {
	@Resource
	private OrderDao orderDao;
	@Override
	public List<OrderVo> aqueryByPage(int currntPage, int pageSize) {
		Map<String, Integer>map=new HashMap<String,Integer>();
		map.put("start", currntPage*pageSize);
		map.put("b", (currntPage-1)*pageSize);
		
		return orderDao.aqueryByPage(map);
	}

	
}
