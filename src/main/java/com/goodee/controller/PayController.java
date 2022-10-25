package com.goodee.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.goodee.service.PayService;
import com.goodee.vo.CartVO;
import com.goodee.vo.orderUser;

@Controller
public class PayController {
	
	private PayService service;

	public PayController(PayService service) {
		super();
		this.service = service;
	}
	
	//주문자정보를 저장하는 로직
		@GetMapping("/InforController")
		public String orderUserInfor(orderUser vo, HttpSession session ,Model model ) {
			
			//session에 있는 id로 찾아서 insert했음
			service.orderInfor(vo,(List<CartVO>)session.getAttribute("cartList"), session, model);
			// 위에 vo에 저장한것들을 출력
			return "pay_result";
		}
	
}
