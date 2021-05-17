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

	@Column(name = "anh1")
	private String anh1;

	@Column(name = "description")
	private String description;
	@Column(name = "size38")
	private String size38;
	@Column(name = "size39")
	private String size39;
	@Column(name = "size40")
	private String size40;
	@Column(name = "size41")
	private String size41;
	
	public String getSize38() {
		return size38;
	}

	public void setSize38(String size38) {
		this.size38 = size38;
	}

	public String getSize39() {
		return size39;
	}

	public void setSize39(String size39) {
		this.size39 = size39;
	}

	public String getSize40() {
		return size40;
	}

	public void setSize40(String size40) {
		this.size40 = size40;
	}

	public String getSize41() {
		return size41;
	}

	public void setSize41(String size41) {
		this.size41 = size41;
	}

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



	public String getAnh1() {
		return anh1;
	}

	public void setAnh1(String anh1) {
		this.anh1 = anh1;
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
