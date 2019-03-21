package com.entor.entity;

public class ShoppingCart {
	private int id;
	private int name;
	private int price;
	private int count;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getName() {
		return name;
	}
	public void setName(int name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	@Override
	public String toString() {
		return "ShoppingCart [id=" + id + ", name=" + name + ", price=" + price + ", count=" + count + "]";
	}
	public ShoppingCart(int id, int name, int price, int count) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.count = count;
	}
	public ShoppingCart() {
		super();
	}
	
}
