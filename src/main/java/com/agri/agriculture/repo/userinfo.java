package com.agri.agriculture.repo;

import org.springframework.data.jpa.repository.JpaRepository;


import com.agri.agriculture.model.User;


public interface userinfo extends JpaRepository<User, Long> {
   
	
	User findByRole(String role);
	User findByEmail(String email);
}
