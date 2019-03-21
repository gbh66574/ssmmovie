package com.entor.entity;

import java.sql.Timestamp;

public class Order {
	private int id;
	private int price;
	private Timestamp getordersTime;
	private int payment;
	private int state;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Timestamp getGetordersTime() {
		return getordersTime;
	}
	public void setGetordersTime(Timestamp getordersTime) {
		this.getordersTime = getordersTime;
	}
	public int getPayment() {
		return payment;
	}
	public void setPayment(int payment) {
		this.payment = payment;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "Order [id=" + id + ", price=" + price + ", getordersTime=" + getordersTime + ", payment=" + payment
				+ ", state=" + state + "]";
	}
	public Order(int id, int price, Timestamp getordersTime, int payment, int state) {
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
