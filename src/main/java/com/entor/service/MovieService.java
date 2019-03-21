package com.entor.service;


import java.util.List;

import com.entor.entity.Movie;
import com.entor.vo.MovieVo;

public interface MovieService extends BaseService<Movie> {

	public List<MovieVo> aqueryByPage(int currntPage,int pageSize);
	
}
