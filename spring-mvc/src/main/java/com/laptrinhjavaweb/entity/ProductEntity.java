package com.laptrinhjavaweb.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "product")
public class ProductEntity extends BaseEntity {

	@Column(name = "name")
	private String name;

	@Column(name = "price")
	private float price;

	@Column(name = "discount")
	private int discount;

	@Column(name = "discount_price")
	private float discount_price;

	@Column(name = "quantity")
	private int quantity;

	@Column(name = "anh1")
	private String anh1;

	@Column(name = "anh2")
	private String anh2;

	@Column(name = "anh3")
	private String anh3;

	@Column(name = "anh4")
	private String anh4;

	@Column(name = "color")
	private String color;

	@Column(name = "size")
	private String size;

	@Column(name = "description")
	private String description;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "category_id")
	private CategoryEntity category;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "company_id")
	private CompanyEntity company;
	@OneToMany(mappedBy = "product")
	private List<OrderDetailEntity> orderdetail = new ArrayList<>();

	public List<OrderDetailEntity> getOrderdetail() {
		return orderdetail;
	}

	public void setOrderdetail(List<OrderDetailEntity> orderdetail) {
		this.orderdetail = orderdetail;
	}

	public CompanyEntity getCompany() {
		return company;
	}

	public void setCompany(CompanyEntity company) {
		this.company = company;
	}

	public ProductEntity() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public float getDiscount_price() {
		return discount_price;
	}

	public void setDiscount_price(float discount_price) {
		this.discount_price = discount_price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getAnh1() {
		return anh1;
	}

	public void setAnh1(String anh1) {
		this.anh1 = anh1;
	}

	public String getAnh2() {
		return anh2;
	}

	public void setAnh2(String anh2) {
		this.anh2 = anh2;
	}

	public String getAnh3() {
		return anh3;
	}

	public void setAnh3(String anh3) {
		this.anh3 = anh3;
	}

	public String getAnh4() {
		return anh4;
	}

	public void setAnh4(String anh4) {
		this.anh4 = anh4;
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public CategoryEntity getCategory() {
		return category;
	}

	public void setCategory(CategoryEntity category) {
		this.category = category;
	}

}
