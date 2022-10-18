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
	public String movemypage(@PathVariable("path") int path) {
		System.out.println("path : "+path);
		if(path == 0) {
			return "my_page";
		} else if(path == 1) {
			return "pay";
		} else if(path == 2) {
			return "pay_result";
		} else {
			return "wrote";
		}
	}
	
}
