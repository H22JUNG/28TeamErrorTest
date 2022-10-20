package com.goodee.service;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.goodee.dao.ProjectDAO;
import com.goodee.vo.UserVO;
import com.goodee.vo.orderUser;

@Service
public class PayService {
	
	public ProjectDAO dao;

	public PayService(ProjectDAO dao) {
		super();
		this.dao = dao;
	}
	public void orderUserInfor(orderUser vo, HttpSession session) {
		vo.setId(((UserVO)session.getAttribute("user")).getId());
		dao.orderUserInfor(vo);
	}
	
	
}
