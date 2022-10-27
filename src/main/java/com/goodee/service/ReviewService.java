package com.goodee.service;

import org.springframework.stereotype.Service;

import com.goodee.dao.ProjectDAO;
import com.goodee.vo.ReviewVO;

@Service
public class ReviewService {

	public ProjectDAO dao;

	public ReviewService(ProjectDAO dao) {
		super();
		this.dao = dao;
	}
	
	public ReviewVO photoSelect(int id) {
		return dao.getSelectReview(id);
	}
}
