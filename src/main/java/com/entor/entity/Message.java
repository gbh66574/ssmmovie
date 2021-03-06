package com.entor.entity;

import java.sql.Timestamp;
import java.util.Date;

public class Message {
	private int id;
	private String uid;
	private String mid;
	private String content;
	private Timestamp reportTime;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getReportTime() {
		return reportTime;
	}
	public void setReportTime(Timestamp reportTime) {
		this.reportTime = reportTime;
	}
	@Override
	public String toString() {
		return "Message [id=" + id + ", uid=" + uid + ", mid=" + mid + ", content=" + content + ", reportTime="
				+ reportTime + "]";
	}
	public Message(int id, String uid, String mid, String content, Timestamp reportTime) {
		super();
		this.id = id;
		this.uid = uid;
		this.mid = mid;
		this.content = content;
		this.reportTime = reportTime;
	}
	public Message() {
		super();
	}
	
	
}
