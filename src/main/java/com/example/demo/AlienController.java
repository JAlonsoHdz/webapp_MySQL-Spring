package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class AlienController {
	
	@RequestMapping("/index")
	public String hello() {
		System.out.println("Hello world, I'm a controller");
		return "index.html";
	}

}
