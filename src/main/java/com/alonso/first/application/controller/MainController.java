package com.alonso.first.application.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.alonso.first.application.model.Task;
import com.alonso.first.application.service.TaskService;

@Controller
public class MainController {
	
	@Autowired
	private TaskService taskService;
	
	@GetMapping("/")
	public String home(HttpServletRequest req) {
		req.setAttribute("mode", "MODE_HOME");																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				
		return "index";
	}
	
	@GetMapping("/all-tasks")
	public String allTasks(HttpServletRequest req) {
		req.setAttribute("tasks", taskService.findAll());
		req.setAttribute("mode", "MODE_TASKS");
		return "index";
	}
	

	@GetMapping("/new-task")
	public String newTask(HttpServletRequest req) {
		req.setAttribute("mode", "MODE_NEW");
		return "index";
	}
	
	@PostMapping("/save-task")
	public String saveTask(@ModelAttribute Task task, BindingResult bindingResult,  HttpServletRequest req) {
		task.setDateCreated(new Date());
		taskService.save(task);
		req.setAttribute("tasks", taskService.findAll());
		req.setAttribute("mode", "MODE_TASKS");
		return "index";
	}


	@GetMapping("/update-tasks")
	public String updateTasks(@RequestParam int id, HttpServletRequest req) {
		req.setAttribute("tasks", taskService.findTask(id));
		System.out.println(taskService.findTask(id).getDescription());
		req.setAttribute("mode", "MODE_UPDATE");
		return "index";
	}
	
	@GetMapping("/delete-tasks")
	public String deleteTask(@RequestParam int id, HttpServletRequest req) {
		taskService.delete(id);
		req.setAttribute("tasks", taskService.findAll());
		req.setAttribute("mode", "TASKS");
		return "index";
	}
}