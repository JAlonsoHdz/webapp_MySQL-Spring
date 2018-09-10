package com.alonso.first.application.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.alonso.first.application.model.Task;
import com.alonso.first.application.service.TaskService;

@RestController
public class SampleRestController {
	
	@Autowired
	private TaskService taskService;
	
//	@GetMapping("/hello")
//	public String helloWorld() {
//		return "hello";
//	}
//	
//	@GetMapping("all-tasks")
//	public String allTasks() {
//		return taskService.findAll().toString();
//		
//	}
//	
//	@GetMapping("save-task")
//	public String saveTask(@RequestParam String name, @RequestParam String desc) {
//		Task task = new Task(name, desc, new Date(), true);
//		taskService.save(task);
//		return "task saved!";																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					
//		
//	}
//	
//	@GetMapping("delete-task")
//	public String deleteTask(@RequestParam int id) {
//		taskService.delete(id);
//		return "task deleted!";																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					
//		
//	}
	
	
	

}
