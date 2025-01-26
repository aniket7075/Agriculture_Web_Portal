package com.agri.agriculture.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.agri.agriculture.model.Product;



public interface productinfo extends JpaRepository<Product, Integer>
{
	
}
