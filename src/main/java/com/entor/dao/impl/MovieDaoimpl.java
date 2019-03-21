package com.entor.dao.impl;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.entor.dao.MovieDao;
import com.entor.entity.Movie;
import com.entor.vo.MovieVo;
@Repository("movieDao")
public class MovieDaoimpl  extends BaseDaoimpl<Movie> implements MovieDao{

	@Override
	public List<MovieVo> aqueryByPage(Map<String, Integer> map) {
		
		return getSqlSession().selectList(Movie.class.getSimpleName()+".queryByPage",map);
	}

	
}
