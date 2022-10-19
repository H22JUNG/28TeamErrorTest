package com.goodee.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.goodee.service.BbsService;

@Controller
public class MoveController {
	public BbsService bbsservice;
	
	public MoveController(BbsService bbsservice) {
		super();
		this.bbsservice = bbsservice;
	}
	
	@GetMapping("/loginpage")
	public String loginpage() {
		return "login";
	}
	@GetMapping("/signuppage")
	public String signuppage() {
		return "sign_up";
	}	
	
	@GetMapping("/cart")
	public String cartPage() {
		return "cart";
	}
	
	@GetMapping("/mypage")
	public String mypage(HttpSession session) {
		if(session.getAttribute("user")!=null) {
		return "my_page";
		} else {
			return "login";
		}
	}
	
	@GetMapping("/adminpage")
	public String adiminpage() {
		return "admin-user";
	}
	
	
	@GetMapping("/movemypage/{path}")
	public String movemypage(@PathVariable("path") int path, Model model, HttpSession session) {
		if(path == 0) {
			return "my_page";
		} else if(path == 1) {
			return "pay";
		} else if(path == 2) {
			return "pay_result";
		} else {
			bbsservice.getwrote(model, session);
			bbsservice.getRewrote(model);
			return "wrote";
		}
	}
	
	//내가 쓴 글
	@GetMapping("/search") 
	public String search(@RequestParam String category, Model model) {
		bbsservice.getsearch(model, category);
		return "wrote";
	}
	@GetMapping("/wrotedetail")
	public String wrotedetail(@RequestParam int id, Model model) {
		bbsservice.getdetail(id, model);
		return "wrotedetail";
	}
	@PostMapping("/list")
	public String list() {
		return "redirect:/movemypage/3";
	}
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable("id") int id) {
		bbsservice.getdelete(id);
		return "redirect:/movemypage/3";
	}
	@GetMapping("/modify/{id}")
	public String modify(@PathVariable("id") int id) {
		return "wroteModify";
	}
	@PostMapping("/modify")
	public String modifydone() {
		return "wrotedetail";
	}
	
	
	
	
	// 관리자 페이지 - 상품정보
	@GetMapping("/admin_product_list")
	public String adminProductList() {
		return "adminProduct/product_list";
	}
	
	// 관리자 페이지 - 상품등록
	@GetMapping("/admin_product_insert")
	public String adminProductInsert() {
		return "adminProduct/product_insert";
	}
	
	// 관리자 페이지 - 상품수정
	@GetMapping("/admin_product_update")
	public String adminProductUpdate() {
		return "adminProduct/product_update";
	}
	
	// 관리자 페이지 - 상품삭제
	@GetMapping("/admin_product_delete")
	public String adminProductDelete() {
		return "adminProduct/product_delete";
	}
}
