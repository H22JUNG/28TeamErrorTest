package com.goodee.dao;

import org.apache.ibatis.annotations.Mapper;

import com.goodee.vo.UserVO;

@Mapper
public interface ProjectDAO {
	
	public int login(UserVO vo);
	public int getId(UserVO vo);
}