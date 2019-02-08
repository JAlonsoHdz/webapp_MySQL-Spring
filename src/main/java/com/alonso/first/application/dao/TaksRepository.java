package com.alonso.first.application.dao;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.alonso.first.application.model.Task;

public interface TaksRepository extends CrudRepository<Task, Integer>{
	
	@Query("from t_tasks where id= :id")
	Task findByIdNew(@Param("id") int id);

}
