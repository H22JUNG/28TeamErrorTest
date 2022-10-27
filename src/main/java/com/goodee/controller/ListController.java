package com.goodee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.goodee.service.ListService;

@Controller
public class ListController {

	public ListService service;

	public ListController(ListService service) {
		this.service = service;
	}
	
	// 카테고리별 상품 리스트 이동
	@GetMapping("/category/{category1}")
	public String movecategory(@PathVariable("category1") String category1, Model model) {
		service.selectCategory(category1, model);
		return "product_list";
	}
	@GetMapping("/category2/{category2}")
	public String category2(@PathVariable("category2") String category2, Model model) {
		service.selectInnerCategory(category2, model);
		return "product_list";
	}
}
