package com.entor.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

import com.entor.dao.UserDao;
import com.entor.entity.User;

import com.entor.service.UserService;

@Controller
@RequestMapping("/User")
public class UserController {

	@Resource
	private UserService UserService;
	private HttpServletRequest request;
	private HttpServletResponse response;
	@RequestMapping("/add")
	public void add(User User) {
		JSONObject jo = new JSONObject();
		PrintWriter out = null;
		try {
			out = response.getWriter();
			UserService.add(User);
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
			UserService.deleteMore(User.class,ids);
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
	public void update(User User) {
		JSONObject jo = new JSONObject();
		PrintWriter out = null;
		try {
			out = response.getWriter();

			UserService.update(User);
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
		String qUsername = request.getParameter("qUsername");
		String qsex = request.getParameter("qsex");
		String qbeginDate = request.getParameter("qbeginDate");
		String qendDate = request.getParameter("qendDate");
		String rows = request.getParameter("rows");
	
		String condition = " where 1=1 ";
		if(qname!=null&&!qname.equals("")&&!qname.equalsIgnoreCase("null")){
			condition += " and name like '%"+qname+"%'";
		}
		if(qUsername!=null&&!qUsername.equals("")&&!qname.equalsIgnoreCase("null")){
			condition += " and Username like '%"+qUsername+"%'";
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
		int totals = UserService.getTotals(User.class);
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
		List<User> list =UserService.queryByPage(User.class, sp, pageSize);
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
	@RequestMapping("/login")
    public void login(User user) {
		JSONObject jo = new JSONObject();
		PrintWriter out = null;
		User u=UserService.checkLogin(user.getUsername(), user.getPassword());
		
		try {
			if(u!=null) {
			out=response.getWriter();
			jo.put("state", 0);
			jo.put("msg", "登录成功");
		}
		} catch (IOException e) {
			jo.put("state", -1);
			jo.put("msg", "登录失败"+e.getMessage());
		}finally {
			String json = JSON.toJSONString(jo);
			System.out.println(json);
			out.write(json);
			out.flush();
			out.close();
		}
	}
		
	@RequestMapping("/logout")
	public void logout(){
		JSONObject jo = new JSONObject();
		PrintWriter out = null;
		request.getSession().invalidate();
		try {
			out=response.getWriter();
			jo.put("state", 0);
			jo.put("msg", "注销成功");
		}catch (IOException e) {
			
		}finally {
			String json = JSON.toJSONString(jo);
			System.out.println(json);
			out.write(json);
			out.flush();
			out.close();
		}
		
	}
	
	@RequestMapping("/addUser")
	public String addUser(User User) {
	/*	User.setId(1);*/
		UserService.addUser(User);
		return "success";
	}
	@RequestMapping("/queryById")
	public void queryById(int id) {
		JSONObject jo = new JSONObject();
		PrintWriter out = null;
		try {
			out = response.getWriter();
			UserService.queryById(User.class,id);
			jo.put("state", 0);
			jo.put("msg", "查询成功");
		}catch(Exception e) {
			jo.put("state", -1);
			jo.put("msg", "查询失败"+e.getMessage());
		}finally {
			String str = JSON.toJSONString(jo);
			System.out.println(str);
			out.write(str);
			out.flush();
			out.close();
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
