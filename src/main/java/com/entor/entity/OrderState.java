package com.entor.entity;

public class OrderState {
	private int id;
	private String state;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "OrderState [id=" + id + ", state=" + state + "]";
	}
	public OrderState(int id, String state) {
		super();
		this.id = id;
		this.state = state;
	}
	public OrderState() {
		super();
	}
	
}
