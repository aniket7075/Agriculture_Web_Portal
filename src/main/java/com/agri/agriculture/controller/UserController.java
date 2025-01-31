package com.agri.agriculture.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.agri.agriculture.model.User;
import com.agri.agriculture.repo.userinfo;




@Controller
public class UserController {

    @Autowired
    private userinfo userRepo;

    @RequestMapping("/")
    public String home() {
        return "Home.jsp";
    }
    // Login Page
  
    @RequestMapping("/registration")
    public String showRegistrationPage() {
        return "registration"; // Returns registration.jsp
    }

    @PostMapping("/login")
    public String handleLogin(@RequestParam String username,
                              @RequestParam String password,
                              @RequestParam String role,
                              Model model) 
    {
        // Fetch the user from the database
        User user = userRepo.findByUsernameAndPassword(username, password);
        
        if (user != null && user.getRole().equalsIgnoreCase(role)) {
            // Redirect to the appropriate dashboard based on role
            switch (role.toLowerCase()) {
                case "admin":
                    return "redirect:/adminDashboard.jsp";
                case "farmer":
                    return "redirect:/farmerDashboard.jsp";
                case "customer":
                    return "redirect:/customerDashboard.jsp";
                default:
                    model.addAttribute("error", "Invalid role!");
                    return "login";
            }
        } else {
            model.addAttribute("error", "Invalid username, password, or role!");
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
