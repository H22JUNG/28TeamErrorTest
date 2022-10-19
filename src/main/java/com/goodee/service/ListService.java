package com.goodee.service;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.goodee.dao.ProjectDAO;

@Service
public class ListService {
	
	public ProjectDAO dao;

	public ListService(ProjectDAO dao) {
		this.dao = dao;
	}

	public void selectCategory (String category1, Model model) {
		model.addAttribute("list" , dao.selectCategory(category1));
		System.out.println("service" + category1);
	}
	public void selectInnerCategory (String category2, Model model) {
		model.addAttribute("list" , dao.selectInnerCategory(category2));
		System.out.println("service" + category2);
	}
}
