package com.entor.service;


import java.util.List;

import com.entor.entity.Order;
import com.entor.vo.OrderVo;

public interface OrderService extends BaseService<Order> {

	public List<OrderVo> aqueryByPage(int currntPage,int pageSize);
	
}
