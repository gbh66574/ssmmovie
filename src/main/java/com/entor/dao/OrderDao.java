package com.entor.dao;



import java.util.List;
import java.util.Map;

import com.entor.entity.Order;
import com.entor.vo.OrderVo;

public interface OrderDao extends BaseDao<Order> {

	public List<OrderVo> aqueryByPage(Map<String, Integer>map);

}
