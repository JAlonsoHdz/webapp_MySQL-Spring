package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class Alien {
	private int aid;
	private String aname;
	
	@Autowired
	private Car acar;
	
	
	public Alien() {
		super();
	}
	
	public Alien(int aid, String aname) {
		super();
		this.aid = aid;
		this.aname = aname;
	}
	
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	
	public void printAlien() {
		System.out.println("This is an Alien!!");
	}
	
	public void drive() {
		acar.accelarate();
	}

}
