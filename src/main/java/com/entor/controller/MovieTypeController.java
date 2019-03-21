package com.entor.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

import com.entor.dao.MovieTypeDao;


import com.entor.entity.MovieType;

import com.entor.service.MovieTypeService;

@Controller
@RequestMapping("/MovieType")
public class MovieTypeController {

	@Resource
	private MovieTypeService MovieTypeService;
	private HttpServletRequest request;
	private HttpServletResponse response;
	@RequestMapping("/add")
	public void add(MovieType MovieType) {
		JSONObject jo = new JSONObject();
		PrintWriter out = null;
		try {
			out = response.getWriter();
			MovieTypeService.add(MovieType);
			jo.put("state", 0);
			jo.put("msg", "新增成功");
		}catch(Exception e) {
			jo.put("state", -1);
			jo.put("msg", "新增失败"+e.getMessage());
		}finally {
			String str = JSON.toJSONString(jo);
			System.out.println(str);
			out.write(str);
			out.flush();
			out.close();
		}
	}
	@RequestMapping("/deleteMore")
	public void deleteMore(String ids) {
		JSONObject jo = new JSONObject();
		PrintWriter out = null;
		try {
			out = response.getWriter();
			MovieTypeService.deleteMore(MovieType.class,ids);
			jo.put("state", 0);
			jo.put("msg", "删除成功");
		}catch(Exception e) {
			jo.put("state", -1);
			jo.put("msg", "删除失败"+e.getMessage());
		}finally {
			String str = JSON.toJSONString(jo);
			System.out.println(str);
			out.write(str);
			out.flush();
			out.close();
		}
	}
	@RequestMapping("/update")
	public void update(MovieType MovieType) {
		JSONObject jo = new JSONObject();
		PrintWriter out = null;
		try {
			out = response.getWriter();

			MovieTypeService.update(MovieType);
			jo.put("state", 0);
			jo.put("msg", "修改成功");
		}catch(Exception e) {
			jo.put("state", -1);
			jo.put("msg", "修改失败"+e.getMessage());
		}finally {
			String str = JSON.toJSONString(jo);
			System.out.println(str);
			out.write(str);
			out.flush();
			out.close();
		}
	}
	@RequestMapping("/queryByPage")
	public void queryByPage(String page) {
		
		String qname = request.getParameter("qname");
		String qMovieTypename = request.getParameter("qMovieTypename");
		String qsex = request.getParameter("qsex");
		String qbeginDate = request.getParameter("qbeginDate");
		String qendDate = request.getParameter("qendDate");
		String rows = request.getParameter("rows");
		String condition = " where 1=1 ";
		if(qname!=null&&!qname.equals("")&&!qname.equalsIgnoreCase("null")){
			condition += " and name like '%"+qname+"%'";
		}
		if(qMovieTypename!=null&&!qMovieTypename.equals("")&&!qname.equalsIgnoreCase("null")){
			condition += " and MovieTypename like '%"+qMovieTypename+"%'";
		}
		if(qsex!=null&&!qsex.equals("")&&!qsex.equals("-1")&&!qname.equalsIgnoreCase("null")){
			condition += " and sex = "+qsex;
		}
		if(qbeginDate!=null&&!qbeginDate.equals("")) {
			condition += " and birthday >= '"+qbeginDate+"'";
		}
		if(qendDate!=null&&!qendDate.equals("")) {
			condition += " and birthday <= '"+qendDate+"'";
		}
		int sp = 1;
		int totals = MovieTypeService.getTotals(MovieType.class);
		int pageSize = Integer.parseInt(rows);
		int pageCounts = totals/pageSize;
		if(totals%pageSize!=0){
			pageCounts++;
		}
		try{
			sp = Integer.parseInt(page);
		}catch(Exception e){
			sp = 1;
		}
		if(sp>pageCounts){
			sp = pageCounts;
		}
		if(sp<1){
			sp = 1;
		}
		List<MovieType> list =MovieTypeService.queryByPage(MovieType.class, sp, pageSize);
		try {
			PrintWriter out = response.getWriter();
			JSONObject jo = new JSONObject();
			jo.put("total", totals);
			jo.put("rows", list);
			String json = JSON.toJSONString(jo);
			System.out.println(json);
			out.write(json);
			out.flush();
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@InitBinder
    public void initBinder(ServletRequestDataBinder binder){
        binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));
    }
	@ModelAttribute
	public void setRequestAndResponse(HttpServletRequest request,HttpServletResponse response) {
		this.request = request;
		this.response = response;
		this.response.setContentType("text/html;charset=utf-8");
	}
}
