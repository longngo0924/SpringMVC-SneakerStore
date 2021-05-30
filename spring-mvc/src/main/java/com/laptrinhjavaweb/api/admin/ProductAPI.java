package com.laptrinhjavaweb.api.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.laptrinhjavaweb.dto.ProductDTO;
import com.laptrinhjavaweb.service.ProductService;

@RestController(value = "productApiOfAdmin")
public class ProductAPI {
	@Autowired
	private ProductService productServ;

	@GetMapping("/api/products")
	public List<ProductDTO> getProduct() {
		return productServ.findAll();
	}
	@PostMapping("/api/product")
	public ProductDTO createProduct(@RequestBody ProductDTO productDTO) {
		return productDTO;
	}

	@PutMapping("/api/product")
	public ProductDTO updateProduct(@RequestBody ProductDTO productDTO) {
		return productDTO;
	}

	@DeleteMapping("/api/product")
	public void deleteProduct(@RequestBody long id) {
		System.out.println("success!");
	}
}
