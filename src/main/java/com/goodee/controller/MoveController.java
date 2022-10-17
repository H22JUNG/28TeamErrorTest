package com.goodee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class MoveController {
	
	@GetMapping("/loginpage")
	public String loginpage() {
		return "login";
	}
	@GetMapping("/signuppage")
	public String signuppage() {
		return "sign_up";
	}	
	@GetMapping("/mypage")
	public String mypage() {
		return "my_page";
	}
	
	@GetMapping("/mypage/{path}")
	public String mypage(@PathVariable("path") int i) {
		System.out.println("i : " + i);
		if(i == 0) {
			return "my_page";
		} else if (i == 2) {
			return "login";
		}else if(i == 3){
			return "pay_result";
		}else {
			return "pay";
		}
	}
}
