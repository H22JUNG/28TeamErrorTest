package com.goodee.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.goodee.service.LoginService;
import com.goodee.vo.UserVO;

@Controller
public class LoginController {
	public LoginService service;

	public LoginController(LoginService service) {
		this.service = service;
	}
	
	@PostMapping("/login")
	public String login(UserVO vo, HttpSession session, HttpServletRequest request) {
		if(service.login(vo).get("login").equals("success")) {
			session = request.getSession();
			session.setAttribute("user", service.getUser(vo));
			if(service.isAdmin(vo) == true) {
				session.setAttribute("admin", "true");
			}
			return "redirect:/";
		}else {
			session.invalidate();
			return "login";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}
