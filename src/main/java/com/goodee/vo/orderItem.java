package com.goodee.vo;

import org.apache.ibatis.type.Alias;

//유진 VO 결제한 상품 정보 담을 vo
@Alias("orderItem")
public class orderItem {
	private String userid;
	private int cartListNum;
	private String itemName;
	private int count;
	private String size;
	private int itemPrice;
	private String color;
	private String proNum;
	private String pic1;
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getCartListNum() {
		return cartListNum;
	}
	public void setCartListNum(int cartListNum) {
		this.cartListNum = cartListNum;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public int getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(int itemPrice) {
		this.itemPrice = itemPrice;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getProNum() {
		return proNum;
	}
	public void setProNum(String proNum) {
		this.proNum = proNum;
	}
	public String getPic1() {
		return pic1;
	}
	public void setPic1(String pic1) {
		this.pic1 = pic1;
	}
	
	
}
