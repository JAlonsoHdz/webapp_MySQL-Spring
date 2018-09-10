package com.example.demo;

import org.springframework.stereotype.Component;

@Component
public class Car {
	public String wheel;
	public int maxSpeed;
	public int passangers ;
	
	public String getWheel() {
		return wheel;
	}
	public void setWheel(String wheel) {
		this.wheel = wheel;
	}
	public int getMaxSpeed() {
		return maxSpeed;
	}
	public void setMaxSpeed(int maxSpeed) {
		this.maxSpeed = maxSpeed;
	}
	public int getPassangers() {
		return passangers;
	}
	public void setPassangers(int passangers) {
		this.passangers = passangers;
	}
	
	public void accelarate() {
		System.out.println("Run runn!!");
	}
	
	

}
