package com.agri.agriculture.repo;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.agri.agriculture.model.User;


public interface userinfo extends JpaRepository<User, Long> {
    Optional<User> findByUsername(String username);
}
