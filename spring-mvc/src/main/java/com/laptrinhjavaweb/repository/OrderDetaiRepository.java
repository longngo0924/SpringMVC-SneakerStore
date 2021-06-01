package com.laptrinhjavaweb.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.laptrinhjavaweb.entity.OrderDetailEntity;


public interface OrderDetaiRepository extends JpaRepository<OrderDetailEntity, Long>{
	@Query(value = "SELECT * FROM orderdetail WHERE order_id = ?1", nativeQuery = true)
	List<OrderDetailEntity> findByHoaDon(Long hoadonID);

}
