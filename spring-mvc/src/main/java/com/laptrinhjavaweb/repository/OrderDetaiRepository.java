package com.laptrinhjavaweb.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.laptrinhjavaweb.entity.OrderDetailEntity;

public interface OrderDetaiRepository extends JpaRepository<OrderDetailEntity, Long>{

}
