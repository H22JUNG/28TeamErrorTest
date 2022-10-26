package com.goodee.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.goodee.service.CartService;
import com.goodee.vo.CartVO;
import com.goodee.vo.UserVO;

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
	
	// 상세페이지 -> 장바구니로 보내기
		// 장바구니 담기
		@ResponseBody
		@PostMapping("/cart")
		public int addCart(CartVO cartvo, HttpSession session) {
			int result = 0;
			UserVO user = (UserVO) session.getAttribute("user");
			if (user != null) {
				cartvo.setUserid(user.getUserid());
				service.addCart(cartvo);
				result = 1;
			}
			return result;
		}

		// 구매하기 담기
		@ResponseBody
		@PostMapping("/pay")
		public int addPay(CartVO cartvo, HttpSession session) {
			int result = 0;
			UserVO user = (UserVO) session.getAttribute("user");
			if (user != null) {
				cartvo.setUserid(user.getUserid());
				service.addCart(cartvo);
				result = 1;
			}
			return result;
		}
}
