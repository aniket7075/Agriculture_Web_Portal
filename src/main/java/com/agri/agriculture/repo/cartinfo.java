package com.agri.agriculture.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.agri.agriculture.model.Cart;
import com.agri.agriculture.model.Product;
import com.agri.agriculture.model.user;



public interface cartinfo extends JpaRepository<Cart, Integer> {
    List<Cart> findByUser(user user);
    Cart findByUserAndProduct(user user, Product product);
}