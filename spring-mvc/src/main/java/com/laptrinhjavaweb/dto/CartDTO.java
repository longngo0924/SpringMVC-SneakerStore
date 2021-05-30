package com.laptrinhjavaweb.dto;

public class CartDTO {
	private int totalQuantity;
	private double totalPrice;
	private ProductDTO productDTO;

	public CartDTO() {
		super();
	}

	public CartDTO(int totalQuantity, double totalPrice, ProductDTO productDTO) {
		super();
		this.totalQuantity = totalQuantity;
		this.totalPrice = totalPrice;
		this.productDTO = productDTO;
	}

	public int getTotalQuantity() {
		return totalQuantity;
	}

	public void setTotalQuantity(int totalQuantity) {
		this.totalQuantity = totalQuantity;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public ProductDTO getProductDTO() {
		return productDTO;
	}

	public void setProductDTO(ProductDTO productDTO) {
		this.productDTO = productDTO;
	}

}
