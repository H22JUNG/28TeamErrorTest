package com.goodee.controller;

import java.security.Provider.Service;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.goodee.service.ReviewService;
import com.goodee.vo.ReviewCommentVO;
import com.goodee.vo.ReviewVO;

@Controller
public class ReviewController {
	
	public ReviewService reviewService;
	
	public ReviewController(ReviewService reviewService) {
		super();
		this.reviewService = reviewService;
	}
	
	
	
	//사진 전체보기에서 사진 선택했을 때 해당 리뷰만 보이게 함
	@GetMapping("/photoSelect/{id}")
	@ResponseBody
	public ReviewVO photoSelect(@PathVariable("id")int id) {
		return reviewService.photoSelect(id);
	}
	
	@GetMapping("/hitsPlus")
	@ResponseBody
	public int hitsPlus(@RequestParam int id, @RequestParam int hits) {
		reviewService.hitsPlus(id, hits);
		return hits;
	}
	@PutMapping("/commentInsert")
	@ResponseBody
	public ReviewCommentVO commnetInsert(@RequestBody ReviewCommentVO vo) {
		reviewService.commnetInsert(vo);
		return vo;
	}
	
	
}
