package com.goodee.service;

import org.springframework.stereotype.Service;

import com.goodee.dao.ProjectDAO;

@Service
public class ProjectService {
	
	public ProjectDAO dao;

	public ProjectService(ProjectDAO dao) {
		super();
		this.dao = dao;
	}
	
	
}
