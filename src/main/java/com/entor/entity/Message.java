package com.entor.entity;

import java.util.Date;

public class Message {
	private int id;
	private int uid;
	private String title;
	private String content;
	private Date reportTime;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getReportTime() {
		return reportTime;
	}
	public void setReportTime(Date reportTime) {
		this.reportTime = reportTime;
	}
	@Override
	public String toString() {
		return "Message [id=" + id + ", uid=" + uid + ", title=" + title + ", content=" + content + ", reportTime="
				+ reportTime + "]";
	}
	public Message(int id, int uid, String title, String content, Date reportTime) {
		super();
		this.id = id;
		this.uid = uid;
		this.title = title;
		this.content = content;
		this.reportTime = reportTime;
	}
	public Message() {
		super();
	}
	
}
