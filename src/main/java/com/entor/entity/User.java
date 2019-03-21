package com.entor.entity;

import java.sql.Timestamp;

import com.alibaba.fastjson.annotation.JSONField;



public class User {
private int id;
private String username;
private String password;
private String name;
private int sex;
private String dress;
private String phone;
private String qq;
@JSONField(format="yyyy-MM-dd HH:mm:ss")
private Timestamp createTime;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getSex() {
	return sex;
}
public void setSex(int sex) {
	this.sex = sex;
}
public String getDress() {
	return dress;
}
public void setDress(String dress) {
	this.dress = dress;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getQq() {
	return qq;
}
public void setQq(String qq) {
	this.qq = qq;
}
public Timestamp getCreateTime() {
	return createTime;
}
public void setCreateTime(Timestamp createTime) {
	this.createTime = createTime;
}
@Override
public String toString() {
	return "User [id=" + id + ", username=" + username + ", password=" + password + ", name=" + name + ", sex=" + sex
			+ ", dress=" + dress + ", phone=" + phone + ", qq=" + qq + ", createTime=" + createTime + "]";
}
public User(int id, String username, String password, String name, int sex, String dress, String phone, String qq,
		Timestamp createTime) {
	super();
	this.id = id;
	this.username = username;
	this.password = password;
	this.name = name;
	this.sex = sex;
	this.dress = dress;
	this.phone = phone;
	this.qq = qq;
	this.createTime = createTime;
}
public User() {
	super();
}

}
