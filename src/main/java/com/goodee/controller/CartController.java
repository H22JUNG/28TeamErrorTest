package com.goodee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.goodee.service.CartService;

@Controller
public class CartController {
	
	public CartService service;

	public CartController(CartService service) {
		this.service = service;
	}
	
	// cart 리스트 가져오기
//	@GetMapping("/cart")
	public String getCart(String userid, Model model) {
		service.getCart(userid, model);
		// 리턴을 어디로 해야되지?
		return "redirect:/cart";
	}
}
