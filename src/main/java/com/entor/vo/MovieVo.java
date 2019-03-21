package com.entor.vo;

public class MovieVo {
	private int id;
	private String name;
	private String type;
	private String content;
	private String price;
	private String photo;
	private String mname;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	@Override
	public String toString() {
		return "MovieVo [id=" + id + ", name=" + name + ", type=" + type + ", content=" + content + ", price=" + price
				+ ", photo=" + photo + ", mname=" + mname + "]";
	}
	public MovieVo(int id, String name, String type, String content, String price, String photo, String mname) {
		super();
		this.id = id;
		this.name = name;
		this.type = type;
		this.content = content;
		this.price = price;
		this.photo = photo;
		this.mname = mname;
	}
	public MovieVo() {
		super();
	}
	
}
