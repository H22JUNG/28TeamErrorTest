package com.goodee.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.goodee.service.PayService;
import com.goodee.vo.orderUser;

@Controller
public class PayController {
	
	private PayService service;

	public PayController(PayService service) {
		super();
		this.service = service;
	}
	
	@GetMapping("/InforController")
	public String orderUserInfor(orderUser vo,HttpSession session) {
		service.orderUserInfor(vo, session);
		return"pay_result";
	}
	
	
}
