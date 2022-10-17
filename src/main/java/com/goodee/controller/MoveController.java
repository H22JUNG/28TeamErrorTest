package com.goodee.controller;

import javax.servlet.http.HttpSession;

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
	public String mypage(HttpSession session) {
		if(session.getAttribute("id")!=null) {
		return "my_page";
		} else {
			return "login";
		}
	}
	
	
}
