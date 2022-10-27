package com.goodee.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.goodee.dao.ProjectDAO;
import com.goodee.vo.CartVO;

@Service
public class CartService {

	public ProjectDAO dao;

	public CartService(ProjectDAO dao) {
		this.dao = dao;
	}

	public List<CartVO> getCart(String userid) {
		List<CartVO> cart = dao.getCart(userid);

		// 변수 초기화
		for (CartVO cartVO : cart) {
			cartVO.initSaleTotal();
		}

		// 값이 모두 세팅된 cart 반환
		return cart;
	}

	// 상세페이지 -> 장바구니에 데이터 보내기
	public void getDetailContent(Model model, String id) {
		model.addAttribute("detailVO", dao.selectDetail(id));
		model.addAttribute("detailOptionVO", dao.selectDetailOption(id));
		model.addAttribute("selectOptionColor", dao.selectOptionColor(id));
		model.addAttribute("selectOptionSize", dao.selectOptionColor(id));
	}
	// 장바구니에 담기, 구매하기에 담기
	public void addCart(CartVO cartvo) {
		dao.addCart(cartvo);
	}
}
