package com.laptrinhjavaweb.dto;

import java.util.Date;

public class OrderDTO extends BaseDTO<OrderDTO> {

	private String name;
	private Date date;
	private double total;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

}
