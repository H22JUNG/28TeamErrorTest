package com.goodee.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

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
			return "login/login";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
//	회원가입
	
//	아이디 중복
	@GetMapping("/idcheck")
	public String idcheck() {
		return "login/idcheck";
	}
	@PostMapping("/checkid")
	@ResponseBody
	public Map<String, String> checkid(@RequestBody UserVO vo) {
		return service.checkid(vo);
	}
	
	@PostMapping("/adduser")
	public String adduser(UserVO vo) {
		service.addUser(vo);
		return "add_user";
	}
	
//	약관 페이지
	@GetMapping("/terms")
	public String terms() {
		return "login/terms";
	}
}
