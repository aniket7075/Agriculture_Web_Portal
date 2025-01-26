package com.agri.agriculture.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;

@Entity
public class Cart {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
    private user user;

    @ManyToOne
    private Product product;

    private int quantity;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public user getUser() {
		return user;
	}

	public void setUser(user user) {
		this.user = user;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) 
	{
		this.product = product;
	}
	public int getQuantity()
	{
		return quantity;
	}
	public void setQuantity(int quantity)
	{
		this.quantity = quantity;
	}
   
}

