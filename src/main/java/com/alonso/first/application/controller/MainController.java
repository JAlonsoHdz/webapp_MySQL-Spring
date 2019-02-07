package com.alonso.first.application.controller;


import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.alonso.first.application.model.FeedbackForm;
import com.alonso.first.application.model.Task;
import com.alonso.first.application.service.FeedbackService;
import com.alonso.first.application.service.TaskService;

@Controller
public class MainController {
	
	@Autowired
	private TaskService taskService;
	
	@Autowired
	private FeedbackService feedbackService;
	
	@GetMapping("/")
	public String home(HttpServletRequest req) {
		req.setAttribute("mode", "MODE_HOME");																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				
		return "index";
	}
	
	
//	@RequestMapping(method= RequestMethod.GET, value={"/","/login"})
//	@GetMapping("/")
//	public String login(HttpServletRequest req) {
//		req.setAttribute("mode", "MODE_LOGIN");																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				
//		return "login";
//	}
	
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
	
	@PostMapping("/save-feedback")
	public String saveFeedback(@ModelAttribute FeedbackForm ff, BindingResult bindingResult,  HttpServletRequest req) {
		feedbackService.save(ff);
		req.setAttribute("feedback", feedbackService.findAll());
		req.setAttribute("mode", "MODE_HOME");
		return "index";
	}


	@GetMapping("/update-tasks")
	public ModelAndView updateTasks(@RequestParam int id)  {
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("task", taskService.findTask(id));
		mv.addObject("mode", "MODE_UPDATE");
		mv.setViewName("index");
		return mv;
	}
	
	@GetMapping("/delete-tasks")
	public String deleteTask(@RequestParam int id, HttpServletRequest req) {
		taskService.delete(id);
		req.setAttribute("tasks", taskService.findAll());
		req.setAttribute("mode", "MODE_TASKS");
		return "index";
	}
}
