package com.entor.entity;

import java.sql.Timestamp;

import com.alibaba.fastjson.annotation.JSONField;

public class Order {
	private int id;
	private String price;
	@JSONField(format="yyyy-MM-dd HH:mm:ss")
	private Timestamp getordersTime;
	private String payment;
	private String state;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public Timestamp getGetordersTime() {
		return getordersTime;
	}
	public void setGetordersTime(Timestamp getordersTime) {
		this.getordersTime = getordersTime;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "Order [id=" + id + ", price=" + price + ", getordersTime=" + getordersTime + ", payment=" + payment
				+ ", state=" + state + "]";
	}
	public Order(int id, String price, Timestamp getordersTime, String payment, String state) {
		super();
		this.id = id;
		this.price = price;
		this.getordersTime = getordersTime;
		this.payment = payment;
		this.state = state;
	}
	public Order() {
		super();
	}
	
}
