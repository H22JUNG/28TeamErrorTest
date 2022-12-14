package com.goodee.controller;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.goodee.service.ListService;
import com.goodee.vo.OptionVO;
import com.goodee.vo.ProductListVO;
import com.goodee.vo.ProductVO;

@Controller
public class AdminProductController {
	public ListService service;

	public AdminProductController(ListService service) {
		super();
		this.service = service;
	}
	
	// 상품 리스트 페이지
	@GetMapping("/admin_product_list")
	public String selectProductList(Model model) {
		service.selectProductList(model);
		return "adminProduct/product_list";
	}
	
	// 상품 수정 페이지
	@GetMapping("/admin/productUpdate/{pro_num}")
	public String updateProduct(@PathVariable("pro_num") String pro_num, Model model) {
		service.selectUpdateList(pro_num, model);
		// product 리스트로 다시 돌아가게 설정
		return "adminProduct/product_update";
	}
	
	// 상품 수정하기
	@PostMapping("/admin/updateInfo/{pro_num}")
	public String updateInfo(@PathVariable("pro_num") String pro_num, ProductListVO vo) {
		vo.setProNum(pro_num);
		service.update(vo);
		return "redirect:/admin_product_list";
	}
	
	// 상품 삭제하기
	@GetMapping("/admin/deleteInfo/{pro_num}")
	public String productDelete(@PathVariable("pro_num") String pro_num) {
		service.productDelete(pro_num);
		System.out.println(pro_num);
		System.out.println("삭제하기 컨트롤러 타니?");
		return "redirect:/admin_product_list";
	}
	
	// 상품 등록하기
	@PostMapping("/admin/insertInfo")
	public String productInsert(ProductListVO vo) {
		service.productInsert(vo);
		System.out.println("상품 등록 컨트롤러 타니?");
		return "redirect:/admin_product_list";
	}
	
}
