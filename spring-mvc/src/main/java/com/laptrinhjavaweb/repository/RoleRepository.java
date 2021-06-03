package com.laptrinhjavaweb.repository;


import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.laptrinhjavaweb.entity.RoleEntity;


public interface RoleRepository  extends JpaRepository<RoleEntity, Long>{
	@Modifying
	@Query(value ="insert into role_user(roleid,userid) values (:id1,:id2)", nativeQuery = true)
	@Transactional
	void addRole(@Param("id1")long id1 ,@Param("id2")long id2);
}
