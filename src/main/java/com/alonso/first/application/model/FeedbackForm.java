package com.alonso.first.application.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="t_feedback")
public class FeedbackForm implements Serializable{
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long fid;
	private String name;
	private String email;
	private String message;
	
	public FeedbackForm() {
		
	}
	
	public FeedbackForm(long fid, String name, String email, String message) {
		super();
		this.fid = fid;
		this.name = name;
		this.email = email;
		this.message = message;
	}

	public long getFid() {
		return fid;
	}

	public void setFid(long fid) {
		this.fid = fid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public String toString() {
		return "FeedbackForm [fid=" + fid + ", name=" + name + ", email=" + email + ", message=" + message + "]";
	}
	
	
	
	

}
