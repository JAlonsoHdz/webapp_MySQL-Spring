package com.alonso.first.application.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.alonso.first.application.dao.FeedbackRepository;
import com.alonso.first.application.model.FeedbackForm;


@Service
@Transactional
public class FeedbackService {
	
	private final FeedbackRepository feedbackRepository;

	public FeedbackService(FeedbackRepository feedbackRepository) {
		this.feedbackRepository = feedbackRepository;
	}
    
	public void save(FeedbackForm feedback) {
		feedbackRepository.save(feedback);
	}
	
	public List<FeedbackForm> findAll() {
		List<FeedbackForm> feedbackList = new ArrayList<>();
		for(FeedbackForm ff: feedbackRepository.findAll()) {
			feedbackList.add(ff);
		}
		
		return feedbackList;		
	}

}
