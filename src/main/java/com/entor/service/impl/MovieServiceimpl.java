package com.entor.service.impl;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.entor.dao.MovieDao;
import com.entor.entity.Movie;
import com.entor.service.MovieService;
import com.entor.vo.MovieVo;

@Service("movieService")
public class MovieServiceimpl extends BaseServiceimpl<Movie> implements MovieService {
	@Resource
	private MovieDao movieDao;
	@Override
	public List<MovieVo> aqueryByPage(int currntPage, int pageSize) {
		Map<String, Integer>map=new HashMap<String,Integer>();
		map.put("start", currntPage*pageSize);
		map.put("b", (currntPage-1)*pageSize);
		
		return movieDao.aqueryByPage(map);
	}

	
}
