package com.laptrinhjavaweb.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "company")
public class CompanyEntity extends BaseEntity {

	@Column(name = "Name",columnDefinition = "ntext")
	private String name;

	@Column(name = "email")
	private String email;

	@Column(name = "address",columnDefinition = "ntext")
	private String address;

	@OneToMany(mappedBy = "company")
	private List<ProductEntity> product = new ArrayList<>();

	public CompanyEntity() {
		super();
	}

	public List<ProductEntity> getProduct() {
		return product;
	}

	public void setProduct(List<ProductEntity> product) {
		this.product = product;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}
