package com.alonso.first.application.dao;

import org.springframework.data.repository.CrudRepository;

import com.alonso.first.application.model.FeedbackForm;

public interface FeedbackRepository extends CrudRepository<FeedbackForm, Long> {

}
