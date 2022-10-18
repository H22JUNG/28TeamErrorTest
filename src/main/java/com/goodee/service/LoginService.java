package com.goodee.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.goodee.dao.ProjectDAO;
import com.goodee.vo.UserVO;

@Service
public class LoginService {
	
	public ProjectDAO dao;

	public LoginService(ProjectDAO dao) {
		super();
		this.dao = dao;
	}
	
	public Map<String, String> login(UserVO vo) {
		Map<String,String> map = new HashMap<String, String>();
		if(dao.login(vo)==1) {
			map.put("login", "success");
		}else {
			map.put("login", "false");
		}
		return map;
	}
	
	public UserVO getUser(UserVO vo) {
		return dao.getUser(vo);
	}
}
