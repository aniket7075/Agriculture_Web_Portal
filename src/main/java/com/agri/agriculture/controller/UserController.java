package com.agri.agriculture.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.agri.agriculture.model.User;
import com.agri.agriculture.repo.userinfo;


@Controller
public class UserController {

    @Autowired
    private userinfo userRepository;

    // Login Page
    @GetMapping("/login")
    public String login() {
        return "login";
    }

    // Registration Page
    @GetMapping("/register")
    public String register() {
        return "register";
    }

    @PostMapping("/register")
    public String registerUser(User user, Model model) {
        Optional<User> existingUser = userRepository.findByUsername(user.getUsername());
        if (existingUser.isPresent()) {
            model.addAttribute("error", "Username already exists.");
            return "register";
        }
        userRepository.save(user);
        model.addAttribute("message", "Registration successful. Please log in.");
        return "redirect:/login";
    }

    // Dashboard
    @GetMapping("/dashboard")
    public String dashboard(Model model) {
        // Add User role logic here
        return "userDashboard"; // Change based on role
    }
}
