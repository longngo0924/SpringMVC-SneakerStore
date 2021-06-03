package com.laptrinhjavaweb.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.ProductDTO;
import com.laptrinhjavaweb.entity.ProductEntity;
import com.laptrinhjavaweb.repository.ProductRepository;

@Service

public class ProductService implements IProductService {

	@Autowired
	private ProductRepository productRepository;

	@Override
	public List<ProductDTO> findAll() {
		List<ProductDTO> models = new ArrayList<>();
		List<ProductEntity> entities = productRepository.findAll();
		for (ProductEntity item : entities) {
			ProductDTO dto = new ProductDTO();

			dto.setId(item.getId());

			dto.setName(item.getName());
			dto.setPrice(item.getPrice());
			dto.setDescription(item.getDescription());
			dto.setDiscount_price(item.getDiscount_price());
			int quantity= Integer.parseInt(item.getSize36())+Integer.parseInt(item.getSize37())+Integer.parseInt(item.getSize38())+Integer.parseInt(item.getSize39())+Integer.parseInt(item.getSize40())+Integer.parseInt(item.getSize41())+Integer.parseInt(item.getSize42())+Integer.parseInt(item.getSize43())+Integer.parseInt(item.getSize44());
			dto.setQuantity(quantity);
			dto.setSize36(item.getSize36());
			dto.setSize37(item.getSize37());
			dto.setSize38(item.getSize38());
			dto.setSize39(item.getSize39());
			dto.setSize40(item.getSize40());
			dto.setSize41(item.getSize41());
			dto.setSize42(item.getSize42());
			dto.setSize43(item.getSize43());
			dto.setSize44(item.getSize44());
			dto.setAnh(item.getAnh());
			dto.setCategoryId(item.getCategory().getId());
			dto.setCategoryName(item.getCategory().getName());
			dto.setCompanyName(item.getCompany().getName());
			models.add(dto);
		}
		return models;
	}

	@Override
	public ProductDTO findOneById(Long id) {
		ProductDTO model = new ProductDTO();
		ProductEntity entity = productRepository.findOne(id);
		model.setId(entity.getId());
		model.setName(entity.getName());
		model.setPrice(entity.getPrice());
		model.setDescription(entity.getDescription());
		model.setDiscount_price(entity.getDiscount_price());
		int quantity= Integer.parseInt(entity.getSize36())+Integer.parseInt(entity.getSize37())+Integer.parseInt(entity.getSize38())+Integer.parseInt(entity.getSize39())+Integer.parseInt(entity.getSize40())+Integer.parseInt(entity.getSize41())+Integer.parseInt(entity.getSize42())+Integer.parseInt(entity.getSize43())+Integer.parseInt(entity.getSize44());
		
		model.setQuantity(quantity);
		model.setSize36(entity.getSize36());
		model.setSize37(entity.getSize37());
		model.setSize38(entity.getSize38());
		model.setSize39(entity.getSize39());
		model.setSize40(entity.getSize40());
		model.setSize41(entity.getSize41());
		model.setSize42(entity.getSize42());
		model.setSize43(entity.getSize43());
		model.setSize44(entity.getSize44());
		model.setAnh(entity.getAnh());
		model.setCategoryName(entity.getCategory().getName());
		model.setCompanyName(entity.getCompany().getName());
		return model;
	}

	@Override
	public List<ProductDTO> findNewestProduct() {
		List<ProductDTO> models = new ArrayList<>();
		List<ProductEntity> entities = productRepository.findNewestProduct();
		for (ProductEntity item : entities) {
			ProductDTO dto = new ProductDTO();
			dto.setId(item.getId());
			dto.setName(item.getName());
			dto.setPrice(item.getPrice());
			dto.setDescription(item.getDescription());
			dto.setDiscount_price(item.getDiscount_price());
			int quantity= Integer.parseInt(item.getSize36())+Integer.parseInt(item.getSize37())+Integer.parseInt(item.getSize38())+Integer.parseInt(item.getSize39())+Integer.parseInt(item.getSize40())+Integer.parseInt(item.getSize41())+Integer.parseInt(item.getSize42())+Integer.parseInt(item.getSize43())+Integer.parseInt(item.getSize44());
			dto.setQuantity(quantity);
			dto.setSize36(item.getSize36());
			dto.setSize37(item.getSize37());
			dto.setSize38(item.getSize38());
			dto.setSize39(item.getSize39());
			dto.setSize40(item.getSize40());
			dto.setSize41(item.getSize41());
			dto.setSize42(item.getSize42());
			dto.setSize43(item.getSize43());
			dto.setSize44(item.getSize44());
			dto.setAnh(item.getAnh());
			dto.setCategoryName(item.getCategory().getName());
			dto.setCompanyName(item.getCompany().getName());
			models.add(dto);
		}
		return models;
	}

	@Override
	public List<ProductDTO> findLifestyleProduct() {
		List<ProductDTO> models = new ArrayList<>();
		List<ProductEntity> entities = productRepository.findLifestyleProduct();
		for (ProductEntity item : entities) {
			ProductDTO dto = new ProductDTO();
			dto.setId(item.getId());
			dto.setName(item.getName());
			dto.setPrice(item.getPrice());
			dto.setDescription(item.getDescription());
			dto.setDiscount_price(item.getDiscount_price());
			int quantity= Integer.parseInt(item.getSize36())+Integer.parseInt(item.getSize37())+Integer.parseInt(item.getSize38())+Integer.parseInt(item.getSize39())+Integer.parseInt(item.getSize40())+Integer.parseInt(item.getSize41())+Integer.parseInt(item.getSize42())+Integer.parseInt(item.getSize43())+Integer.parseInt(item.getSize44());
			dto.setQuantity(quantity);	
			dto.setSize36(item.getSize36());
			dto.setSize37(item.getSize37());
			dto.setSize38(item.getSize38());
			dto.setSize39(item.getSize39());
			dto.setSize40(item.getSize40());
			dto.setSize41(item.getSize41());
			dto.setSize42(item.getSize42());
			dto.setSize43(item.getSize43());
			dto.setSize44(item.getSize44());
			dto.setAnh(item.getAnh());
			dto.setCategoryName(item.getCategory().getName());
			dto.setCompanyName(item.getCompany().getName());
			models.add(dto);
		}
		return models;
	}

	@Override
	public List<ProductDTO> findNRunningProduct() {
		List<ProductDTO> models = new ArrayList<>();
		List<ProductEntity> entities = productRepository.findNRunningProduct();
		for (ProductEntity item : entities) {
			ProductDTO dto = new ProductDTO();
			dto.setId(item.getId());
			dto.setName(item.getName());
			dto.setPrice(item.getPrice());
			dto.setDescription(item.getDescription());
			dto.setDiscount_price(item.getDiscount_price());
			int quantity= Integer.parseInt(item.getSize36())+Integer.parseInt(item.getSize37())+Integer.parseInt(item.getSize38())+Integer.parseInt(item.getSize39())+Integer.parseInt(item.getSize40())+Integer.parseInt(item.getSize41())+Integer.parseInt(item.getSize42())+Integer.parseInt(item.getSize43())+Integer.parseInt(item.getSize44());
			dto.setQuantity(quantity);
			dto.setSize36(item.getSize36());
			dto.setSize37(item.getSize37());
			dto.setSize38(item.getSize38());
			dto.setSize39(item.getSize39());
			dto.setSize40(item.getSize40());
			dto.setSize41(item.getSize41());
			dto.setSize42(item.getSize42());
			dto.setSize43(item.getSize43());
			dto.setSize44(item.getSize44());
			dto.setAnh(item.getAnh());
			dto.setCategoryId(item.getCategory().getId());
			dto.setCategoryName(item.getCategory().getName());
			dto.setCompanyName(item.getCompany().getName());
			models.add(dto);
		}
		return models;
	}

	@Override
	public List<ProductDTO> findBasketballProduct() {
		List<ProductDTO> models = new ArrayList<>();
		List<ProductEntity> entities = productRepository.findBasketballProduct();
		for (ProductEntity item : entities) {
			ProductDTO dto = new ProductDTO();
			dto.setId(item.getId());
			dto.setName(item.getName());
			dto.setPrice(item.getPrice());
			dto.setDescription(item.getDescription());
			dto.setDiscount_price(item.getDiscount_price());
			int quantity= Integer.parseInt(item.getSize36())+Integer.parseInt(item.getSize37())+Integer.parseInt(item.getSize38())+Integer.parseInt(item.getSize39())+Integer.parseInt(item.getSize40())+Integer.parseInt(item.getSize41())+Integer.parseInt(item.getSize42())+Integer.parseInt(item.getSize43())+Integer.parseInt(item.getSize44());
			dto.setQuantity(quantity);
			dto.setSize36(item.getSize36());
			dto.setSize37(item.getSize37());
			dto.setSize38(item.getSize38());
			dto.setSize39(item.getSize39());
			dto.setSize40(item.getSize40());
			dto.setSize41(item.getSize41());
			dto.setSize42(item.getSize42());
			dto.setSize43(item.getSize43());
			dto.setSize44(item.getSize44());
			dto.setAnh(item.getAnh());
			dto.setCategoryId(item.getCategory().getId());
			dto.setCategoryName(item.getCategory().getName());
			dto.setCompanyName(item.getCompany().getName());
			models.add(dto);
		}
		return models;
	}

	@Override
	public List<ProductDTO> findGymProduct() {
		List<ProductDTO> models = new ArrayList<>();
		List<ProductEntity> entities = productRepository.findGymProduct();
		for (ProductEntity item : entities) {
			ProductDTO dto = new ProductDTO();
			dto.setId(item.getId());
			dto.setName(item.getName());
			dto.setPrice(item.getPrice());
			dto.setDescription(item.getDescription());
			dto.setDiscount_price(item.getDiscount_price());
			int quantity= Integer.parseInt(item.getSize36())+Integer.parseInt(item.getSize37())+Integer.parseInt(item.getSize38())+Integer.parseInt(item.getSize39())+Integer.parseInt(item.getSize40())+Integer.parseInt(item.getSize41())+Integer.parseInt(item.getSize42())+Integer.parseInt(item.getSize43())+Integer.parseInt(item.getSize44());
			dto.setQuantity(quantity);
			dto.setSize36(item.getSize36());
			dto.setSize37(item.getSize37());
			dto.setSize38(item.getSize38());
			dto.setSize39(item.getSize39());
			dto.setSize40(item.getSize40());
			dto.setSize41(item.getSize41());
			dto.setSize42(item.getSize42());
			dto.setSize43(item.getSize43());
			dto.setSize44(item.getSize44());
			dto.setAnh(item.getAnh());
			dto.setCategoryName(item.getCategory().getName());
			dto.setCompanyName(item.getCompany().getName());
			models.add(dto);
		}
		return models;
	}

	@Override
	public List<ProductDTO> findSandalProduct() {
		List<ProductDTO> models = new ArrayList<>();
		List<ProductEntity> entities = productRepository.findSandalProduct();
		for (ProductEntity item : entities) {
			ProductDTO dto = new ProductDTO();
			dto.setId(item.getId());
			dto.setName(item.getName());
			dto.setPrice(item.getPrice());
			dto.setDescription(item.getDescription());
			dto.setDiscount_price(item.getDiscount_price());
			int quantity= Integer.parseInt(item.getSize36())+Integer.parseInt(item.getSize37())+Integer.parseInt(item.getSize38())+Integer.parseInt(item.getSize39())+Integer.parseInt(item.getSize40())+Integer.parseInt(item.getSize41())+Integer.parseInt(item.getSize42())+Integer.parseInt(item.getSize43())+Integer.parseInt(item.getSize44());
			dto.setQuantity(quantity);

			dto.setSize36(item.getSize36());
			dto.setSize37(item.getSize37());
			dto.setSize38(item.getSize38());
			dto.setSize39(item.getSize39());
			dto.setSize40(item.getSize40());
			dto.setSize41(item.getSize41());
			dto.setSize42(item.getSize42());
			dto.setSize43(item.getSize43());
			dto.setSize44(item.getSize44());
			dto.setAnh(item.getAnh());
			dto.setCategoryName(item.getCategory().getName());
			dto.setCompanyName(item.getCompany().getName());
			models.add(dto);
		}
		return models;
	}

	@Override
	public ProductEntity findbyId(Long id) {
		return productRepository.findOne(id);
	}

	@Override
	public void save(ProductEntity sanPham) {
		productRepository.save(sanPham);

	}

	@Override
	public void updateSanPham(ProductEntity sanPham) {
		productRepository.save(sanPham);

	}

}
