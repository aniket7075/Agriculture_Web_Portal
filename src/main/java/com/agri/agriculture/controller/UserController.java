package com.agri.agriculture.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.agri.agriculture.model.User;
import com.agri.agriculture.repo.userinfo;

import ch.qos.logback.core.joran.spi.HttpUtil.RequestMethod;


@Controller
public class UserController {

    @Autowired
    private userinfo userRepo;

    @RequestMapping("/")
    public String home() {
        return "register.jsp";
    }
    // Login Page
  
    @RequestMapping("/registration")
    public String showRegistrationPage() {
        return "registration"; // Returns registration.jsp
    }

    @PostMapping("/login")
    public String handleLogin(@RequestParam String username,
                              @RequestParam String password,
                              Model model) {
        // Mock validation (replace with DB validation)
        if ("admin".equals(username) && "admin123".equals(password)) {
            model.addAttribute("message", "Welcome, Admin!");
            return "redirect:/admin/home";
        } else if ("farmer".equals(username) && "farmer123".equals(password)) {
            model.addAttribute("message", "Welcome, Farmer!");
            return "redirect:/farmer/home";
        } else if ("customer".equals(username) && "customer123".equals(password)) {
            model.addAttribute("message", "Welcome, Customer!");
            return "redirect:/customer/home";
        } else {
            model.addAttribute("error", "Invalid username or password!");
            return "login";
        }
    }

    @RequestMapping("/register")
    public String handleRegistration(@ModelAttribute User e) 
    {
        // Mock registration logic (store user in DB)
       userRepo.save(e);
        return "login.jsp";
    }
}
