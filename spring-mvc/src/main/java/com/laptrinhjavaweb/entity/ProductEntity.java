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

	@Column(name = "name", columnDefinition = "ntext")
	private String name;

	@Column(name = "price")
	private float price;

	@Column(name = "discount")
	private int discount;

	@Column(name = "discount_price")
	private float discount_price;

	@Column(name = "anh")
	private String anh;

	@Column(name = "size36")
	private String size36;

	@Column(name = "size37")
	private String size37;

	@Column(name = "size38")
	private String size38;

	@Column(name = "size39")
	private String size39;

	@Column(name = "size40")
	private String size40;

	@Column(name = "size41")
	private String size41;

	@Column(name = "size42")
	private String size42;

	@Column(name = "size43")
	private String size43;

	@Column(name = "size44")
	private String size44;

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


	public String getAnh() {
		return anh;
	}

	public void setAnh(String anh) {
		this.anh = anh;
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

	public String getSize36() {
		return size36;
	}

	public void setSize36(String size36) {
		this.size36 = size36;
	}

	public String getSize37() {
		return size37;
	}

	public void setSize37(String size37) {
		this.size37 = size37;
	}

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

	public String getSize42() {
		return size42;
	}

	public void setSize42(String size42) {
		this.size42 = size42;
	}

	public String getSize43() {
		return size43;
	}

	public void setSize43(String size43) {
		this.size43 = size43;
	}

	public String getSize44() {
		return size44;
	}

	public void setSize44(String size44) {
		this.size44 = size44;
	}

}