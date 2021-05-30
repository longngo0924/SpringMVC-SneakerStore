package com.laptrinhjavaweb.dto;

import java.io.Serializable;

public class CompanyDTO extends BaseDTO<CompanyDTO> {

	/**
	 * 
	 */
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}