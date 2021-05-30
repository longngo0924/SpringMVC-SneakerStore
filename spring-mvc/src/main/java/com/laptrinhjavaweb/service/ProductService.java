package com.laptrinhjavaweb.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.ProductDTO;
import com.laptrinhjavaweb.entity.ProductEntity;
import com.laptrinhjavaweb.repository.ProductRepository;

@Service
public class ProductService<S> implements BaseService {

	@Autowired
	private ProductRepository productRepository;

	@Override
	public List<ProductDTO> findAll() {
		List<ProductDTO> models = new ArrayList<>();
		List<ProductEntity> entities = productRepository.findAll();
		for (ProductEntity item : entities) {
			ProductDTO dto = new ProductDTO();
			dto.setName(item.getName());
			dto.setPrice(item.getPrice());
			dto.setDescription(item.getDescription());
			dto.setDiscount_price(item.getDiscount_price());
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

			models.add(dto);
		}
		return models;
	}
	
//	@Transactional
//	public ProductDTO createProduct(ProductDTO productDto) {
//		ProductEntity dto = new ProductEntity();
//		dto.setName(productDto.getName());
//		dto.setPrice(productDto.getPrice());
//		dto.setDescription(productDto.getDescription());
//		dto.setDiscount_price(productDto.getDiscount_price());
//		dto.setSize36(productDto.getSize36());
//		dto.setSize37(productDto.getSize37());
//		dto.setSize38(productDto.getSize38());
//		dto.setSize39(productDto.getSize39());
//		dto.setSize40(productDto.getSize40());
//		dto.setSize41(productDto.getSize41());
//		dto.setSize42(productDto.getSize42());
//		dto.setSize43(productDto.getSize43());
//		dto.setSize44(productDto.getSize44());
//		dto.setCompany(productDto.getCompany());
//		dto.setCategory(productDto.getCategory());
//		dto.setAnh(productDto.getAnh());
//		ProductEntity savePro= productRepository.save(dto);
//		ProductDTO productDto1 = new ProductDTO();
//		productDto1.setId(dto.getId());
//		productDto1.setName(dto.getName());
//		productDto1.setPrice(dto.getPrice());
//		productDto1.setDescription(dto.getDescription());
//		productDto1.setDiscount_price(dto.getDiscount_price());
//		productDto1.setSize36(dto.getSize36());
//		productDto1.setSize37(dto.getSize37());
//		productDto1.setSize38(dto.getSize38());
//		productDto1.setSize39(dto.getSize39());
//		productDto1.setSize40(dto.getSize40());
//		productDto1.setSize41(dto.getSize41());
//		productDto1.setSize42(dto.getSize42());
//		productDto1.setSize43(dto.getSize43());
//		productDto1.setSize44(dto.getSize44());
//		productDto1.setAnh(dto.getAnh());
//		return productDto1;
//		
//	}
//	private ProductEntity findOneSafe(Long id) throws Exception{
//        ProductEntity task = productRepository.findOne(id);
//        if (task == null) {
//            String message = "not find";
//			throw new Exception(message);
//        } else {
//            return task;
//        }
//    }
//	@Transactional
//	   public ProductDTO updateProduct(Long id, ProductDTO productDto) throws Exception {
//        ProductEntity dto = findOneSafe(id);
//        dto.setName(productDto.getName());
//		dto.setPrice(productDto.getPrice());
//		dto.setDescription(productDto.getDescription());
//		dto.setDiscount_price(productDto.getDiscount_price());
//		dto.setSize36(productDto.getSize36());
//		dto.setSize37(productDto.getSize37());
//		dto.setSize38(productDto.getSize38());
//		dto.setSize39(productDto.getSize39());
//		dto.setSize40(productDto.getSize40());
//		dto.setSize41(productDto.getSize41());
//		dto.setSize42(productDto.getSize42());
//		dto.setSize43(productDto.getSize43());
//		dto.setSize44(productDto.getSize44());
//		dto.setAnh(productDto.getAnh());
//		ProductDTO productDto1 = new ProductDTO();
//		productDto1.setId(dto.getId());
//		productDto1.setName(dto.getName());
//		productDto1.setPrice(dto.getPrice());
//		productDto1.setDescription(dto.getDescription());
//		productDto1.setDiscount_price(dto.getDiscount_price());
//		productDto1.setSize36(dto.getSize36());
//		productDto1.setSize37(dto.getSize37());
//		productDto1.setSize38(dto.getSize38());
//		productDto1.setSize39(dto.getSize39());
//		productDto1.setSize40(dto.getSize40());
//		productDto1.setSize41(dto.getSize41());
//		productDto1.setSize42(dto.getSize42());
//		productDto1.setSize43(dto.getSize43());
//		productDto1.setSize44(dto.getSize44());
//		productDto1.setAnh(dto.getAnh());
//		return productDto1;
//    }
//	 public void deleteProduct(Long id) throws Exception {
//	        ProductEntity task = findOneSafe(id);
//	        productRepository.delete(task);
//	    }


}
