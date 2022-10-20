package com.goodee.vo;

import org.apache.ibatis.type.Alias;

@Alias("pageVO")
public class PageVO {

	private int nowPage;
		
	//시작페이지
	private int startPage;
		
	//종료페이지
	private int endPage;
		
	//전체페이지
	private int totalPage;
		
	//총 row 개수
	private int total;
		
	//블럭당 row 개수 (15)
	private int cntPerPage;

	//처음 row
	private int start;
		
	//현재 블록
	private int nowBlock;
		
	//블록 당 페이지
	private int cntPerBlock;

	public int getNowPage() {
		return nowPage;
	}

	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getCntPerPage() {
		return cntPerPage;
	}

	public void setCntPerPage(int cntPerPage) {
		this.cntPerPage = cntPerPage;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getNowBlock() {
		return nowBlock;
	}

	public void setNowBlock(int nowBlock) {
		this.nowBlock = nowBlock;
	}

	public int getCntPerBlock() {
		return cntPerBlock;
	}

	public void setCntPerBlock(int cntPerBlock) {
		this.cntPerBlock = cntPerBlock;
	}
	
	
}
