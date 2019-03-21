package com.entor.entity;

public class PayType {
	private int id;
	private String paytype;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPaytype() {
		return paytype;
	}
	public void setPaytype(String paytype) {
		this.paytype = paytype;
	}
	@Override
	public String toString() {
		return "PayType [id=" + id + ", paytype=" + paytype + "]";
	}
	public PayType(int id, String paytype) {
		super();
		this.id = id;
		this.paytype = paytype;
	}
	public PayType() {
		super();
	}
	
}
