package com.goodee.service;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.goodee.dao.ProjectDAO;
import com.goodee.vo.CartVO;

@Service
public class CartService {
	
	public ProjectDAO dao;

	public CartService(ProjectDAO dao) {
		this.dao = dao;
	}
	
	
	public void getCart(String userid, Model model) {
		model.addAttribute("cartList", dao.getCart(userid));
	}
}
