package com.agri.agriculture.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.agri.agriculture.model.User;
import com.agri.agriculture.repo.userinfo;

import ch.qos.logback.core.joran.spi.HttpUtil.RequestMethod;


@Controller
public class UserController {

    @Autowired
    private userinfo userRepository;

    @RequestMapping("/")
    public String home() {
        return "register.jsp";
    }
    // Login Page
  
    @RequestMapping("/login")
    public String login() {
        return "login.jsp";
    }

   

    @RequestMapping("/register")
    public String registerUser(User user, Model model) {
        Optional<User> existingUser = userRepository.findByUsername(user.getUsername());
        if (existingUser.isPresent()) {
            model.addAttribute("error", "Username already exists.");
            return "redirect:/register";
        }

        userRepository.save(user);
        model.addAttribute("message", "Registration successful. Please log in.");
        return "redirect:/login";
    }

    // Dashboard
    @GetMapping("/dashboard")
    public String dashboard(Model model) {
        // Add User role logic here
        return "userDashboard.jsp"; // Change based on role
    }
}
