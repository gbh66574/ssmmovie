package com.entor.dao;


import java.util.List;
import java.util.Map;

import com.entor.entity.Movie;
import com.entor.vo.MovieVo;

public interface MovieDao extends BaseDao<Movie> {

	public List<MovieVo> aqueryByPage(Map<String, Integer>map);

}
