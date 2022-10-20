package com.goodee.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;

import com.goodee.dao.ProjectDAO;
import com.goodee.vo.PageVO;
import com.goodee.vo.UserVO;

@Service
public class UserService {
	public ProjectDAO dao;

	public UserService(ProjectDAO dao) {
		super();
		this.dao = dao;
	}
	//관리자페이지-회원관리
	public List<UserVO> userlist(Model model, PageVO vo, int page) {
		vo.setTotal(dao.usercount());
		vo.setNowPage(page);
		vo.setCntPerPage(12);
		vo.setStart((page-1)*vo.getCntPerPage());
		vo.setEndPage(page*vo.getCntPerPage());
		
		vo.setCntPerBlock(10);
		int totalPage = vo.getTotal()/vo.getCntPerPage();
		totalPage = (vo.getTotal()%vo.getCntPerPage()==0)?totalPage : totalPage+1;
		vo.setTotalPage(totalPage);
		
		int initPage = (vo.getNowPage()-1)/vo.getCntPerBlock()*vo.getCntPerBlock();
		int startPage = initPage+1;
		vo.setStartPage(startPage);
		
		int endPage = initPage+vo.getCntPerBlock();
		if(endPage>vo.getTotalPage()) {
			endPage = vo.getTotalPage();
		}
		vo.setEndPage(endPage);
		
		model.addAttribute("list", dao.userList(vo));
		model.addAttribute("page", vo);
		return dao.userList(vo);
	}
	public List<UserVO> userlistmodi(Model model, int id) {
		model.addAttribute("list", dao.userListdetail(id));
		return dao.userListdetail(id);
	}
	public void adminUserUpdate(UserVO vo) {
		dao.adminUserUpdate(vo);
	}
	
	public void adminUserDelete(@RequestBody UserVO vo) {
		dao.adminUserDelete(vo);
	}
	
}
