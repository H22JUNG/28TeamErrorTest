package com.goodee.dao;

import org.apache.ibatis.annotations.Mapper;

import com.goodee.vo.UserVO;

@Mapper
public interface ProjectDAO {
	
	public int login(UserVO vo);
	public UserVO getUser(UserVO vo);
	public int isAdmin(UserVO vo);
}
