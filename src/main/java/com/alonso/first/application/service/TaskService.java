package com.alonso.first.application.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.alonso.first.application.dao.TaksRepository;
import com.alonso.first.application.model.Task;

@Service
@Transactional
public class TaskService {
	
	private final TaksRepository taksRepository;

	public TaskService(TaksRepository taksRepository) {
		this.taksRepository = taksRepository;
	}
	
	public List<Task> findAll() {
		List<Task> tasks = new ArrayList<>();
		for(Task task: taksRepository.findAll()) {
			tasks.add(task);
		}
		
		return tasks;		
	}
	
	public Task findTask(int id) {
		//Optional<Task> task = taksRepository.findById(id);
		Task task = taksRepository.findByIdNew(id);
		return task;
	}
	
	public void save(Task task) {
		taksRepository.save(task);
	}

	public void delete(int id) {
		taksRepository.deleteById(id);
		
	}
	
	
}
