package com.goodee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.goodee.service.CartService;

@Controller
public class CartController {
	
	public CartService service;

	public CartController(CartService service) {
		this.service = service;
	}
	
	// cart 리스트 가져오기
	@GetMapping("/cart/{userid}")
	public String getCart(@PathVariable("userid") String userid, Model model) {
		model.addAttribute("cartInfo",service.getCart(userid));
		
		return "cart";
	}
}
