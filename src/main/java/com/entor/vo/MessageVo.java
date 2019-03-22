package com.entor.vo;

import java.sql.Timestamp;
import java.util.Date;

import com.alibaba.fastjson.annotation.JSONField;

public class MessageVo {
	private int id;
	private String uid;
	private String mid;
	private String content;
	@JSONField(format="yyyy-MM-dd HH:mm:ss")
	private Timestamp reportTime;
	private String uname;
	private String mname;
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
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	@Override
	public String toString() {
		return "MessageVo [id=" + id + ", uid=" + uid + ", mid=" + mid + ", content=" + content + ", reportTime="
				+ reportTime + ", uname=" + uname + ", mname=" + mname + "]";
	}
	public MessageVo(int id, String uid, String mid, String content, Timestamp reportTime, String uname, String mname) {
		super();
		this.id = id;
		this.uid = uid;
		this.mid = mid;
		this.content = content;
		this.reportTime = reportTime;
		this.uname = uname;
		this.mname = mname;
	}
	public MessageVo() {
		super();
	}
	
	
}
