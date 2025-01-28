package com.agri.agriculture.repo;

import org.springframework.data.jpa.repository.JpaRepository;


import com.agri.agriculture.model.User;


public interface userinfo extends JpaRepository<User, Long> {
   
   
	User findByUsernameAndPassword(String username, String password);
}
