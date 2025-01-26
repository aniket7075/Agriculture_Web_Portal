package com.agri.agriculture.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.agri.agriculture.model.user;


public interface userinfo extends JpaRepository<user, Integer> 
{
    user findByEmail(String email);
}
