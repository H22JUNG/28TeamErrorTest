package com.goodee.vo;

import org.apache.ibatis.type.Alias;

@Alias("CartVO")
public class CartVO {
	// cart
	private int cartid;  //장바구니번호
	private String userid;	// 이용자 아이디
	private String userName;	// user 이름
	private int count; //구매 수량
	
	// product
	private int id;  // 상품 번호
	private String name; //상품이름
	private int price; //상품 원가
	private int discount;	// 할인율 
	private String pic1;	// 1번사진
	
	// option
	private String proNum; // 상품코드
	private String color; //옵션 색상
	private String size;  // 옵션 사이즈
	
	// 추가(계산)
	private int salePrice;	// 판매 가격
	// count, price, discount가 있다면 구할 수 있음!
	private int resultPrice;	// 총 가격 = 판매가격 * 수량
	
	
	
	// 변경될 때마다 초기화 해주기 위한 메서드
	public int getCartid() {
		return cartid;
	}

	public void setCartid(int cartid) {
		this.cartid = cartid;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public String getPic1() {
		return pic1;
	}

	public void setPic1(String pic1) {
		this.pic1 = pic1;
	}

	public String getProNum() {
		return proNum;
	}

	public void setProNum(String proNum) {
		this.proNum = proNum;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	
	// getter만 생성
	public int getSalePrice() {
		return salePrice;
	}

	public int getResultPrice() {
		return resultPrice;
	}

	// 금액이 변경될때 쓰는 메서드
	public void initSaleTotal() {
		// %를 어떻게 만들어줄것인가.
		this.salePrice = (int)(this.price * (1-this.discount));
		this.resultPrice = this.salePrice*this.count;
	}

	// toString
	@Override
	public String toString() {
		return "CartVO [cartid=" + cartid + ", userid=" + userid + ", userName=" + userName + ", count=" + count
				+ ", id=" + id + ", name=" + name + ", price=" + price + ", discount=" + discount + ", pic1=" + pic1
				+ ", proNum=" + proNum + ", color=" + color + ", size=" + size + ", salePrice=" + salePrice
				+ ", resultPrice=" + resultPrice + "]";
	}
	
	

}
