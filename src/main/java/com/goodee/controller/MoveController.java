package com.goodee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

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
}
