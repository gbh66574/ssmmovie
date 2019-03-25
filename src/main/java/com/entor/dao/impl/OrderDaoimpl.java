package com.entor.dao.impl;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.entor.dao.OrderDao;
import com.entor.entity.Order;
import com.entor.vo.OrderVo;
@Repository("orderDao")
public class OrderDaoimpl  extends BaseDaoimpl<Order> implements OrderDao{

	@Override
	public List<OrderVo> aqueryByPage(Map<String, Integer> map) {
		
		return getSqlSession().selectList(Order.class.getSimpleName()+".queryByPage",map);
	}

	
}
