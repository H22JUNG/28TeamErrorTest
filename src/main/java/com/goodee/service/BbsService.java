package com.goodee.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

import com.goodee.dao.ProjectDAO;

import com.goodee.vo.UserVO;
import com.goodee.vo.WrotebbsVO;

@Service
public class BbsService {
	public ProjectDAO dao;

	public BbsService(ProjectDAO dao) {
		super();
		this.dao = dao;
	}

	//내가 쓴 글
	UserVO uservo = new UserVO();
	
	public List<WrotebbsVO> getwrote(Model model, HttpSession session) {
		UserVO uservo = (UserVO)session.getAttribute("user");
		model.addAttribute("list", dao.getwrote(uservo));
		if(session.getAttribute("admin")!=null) {
			model.addAttribute("allList", dao.getwrote());
		}
		return dao.getwrote(uservo);
	}
	
	public List<WrotebbsVO> getRewrote(Model model) {
		model.addAttribute("Relist", dao.getRewrote());
		return dao.getRewrote();
	}
	
	public List<WrotebbsVO> getsearch(Model model, String category, HttpSession session) {
		UserVO vo = (UserVO)session.getAttribute("user");
		String id = Integer.toString(vo.getId());
		model.addAttribute("list", dao.getsearch(category, id));
		return dao.getsearch(category, id);
	}
	
	public WrotebbsVO getdetail(@RequestParam int id, Model model) {
		model.addAttribute("detail", dao.getdetail(id));
		return dao.getdetail(id);
	}
	
	public void modify(WrotebbsVO vo) {
		dao.modify(vo);
	}
	public void getdelete(int id) {
		dao.getdelete(id);
	}
	
}
