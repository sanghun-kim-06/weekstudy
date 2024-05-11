package com.jstl.model.dto;

/**
 * 
 */
public class Food {
	private String name;
	private int price;
	private String flavor;
	public Food() {
		// TODO Auto-generated constructor stub
	}
	//alt + s + a + g
	public Food(String name, int price, String flavor) {
		super();
		this.name = name;
		this.price = price;
		this.flavor = flavor;
	}
	//alt + s + r + a + r
	String getName() {
		return name;
	}
	void setName(String name) {
		this.name = name;
	}
	int getPrice() {
		return price;
	}
	void setPrice(int price) {
		this.price = price;
	}
	String getFlavor() {
		return flavor;
	}
	void setFlavor(String flavor) {
		this.flavor = flavor;
	}
	
}