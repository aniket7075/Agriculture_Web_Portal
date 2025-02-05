package com.agri.agriculture.controller;




import javax.servlet.http.HttpSession;
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
    public class UserController 
    {

        @Autowired
        private userinfo userRepo;

        @RequestMapping("/")
        public String home() {
            return "Home.jsp";
        }

        // Login Page
        @RequestMapping("/registration")
        public String showRegistrationPage() {
            return "register.jsp"; // Returns registration.jsp
        }

        @RequestMapping("/login")
        public String login(@RequestParam String email, 
                            @RequestParam String password,
                            Model model, 
                            HttpSession session) { // Ensure this is treated correctly

            User userFromDb = userRepo.findByEmail(email);
            if (userFromDb != null) {
                if (userFromDb.getPassword().equals(password)) {
                    session.setAttribute("currentUser", userFromDb);

                    if ("Farmer".equals(userFromDb.getRole())) {
                        session.setAttribute("role", "Farmer");
                        return "redirect:/farmerDashboard";
                    } else if ("Customer".equals(userFromDb.getRole())) {
                        session.setAttribute("role", "Customer");
                        return "redirect:/userDashboard";
                    } else {
                        model.addAttribute("error", "Invalid user role.");
                    }
                } else {
                    model.addAttribute("error", "Invalid password.");
                }
            } else {
                model.addAttribute("error", "User not found.");
            }

            return "login.jsp";
        }
        // Registration
        @RequestMapping("/register")
        public String handleRegistration(@ModelAttribute User user) {
            // Save the new user in the database
            userRepo.save(user);
            return "login.jsp"; // Redirect to the login page after registration
        }

        // Farmer Dashboard Page
        @RequestMapping("/farmerDashboard")
        public String farmerDashboard() {
            return "farmerDashboard.jsp"; // Farmer dashboard page
        }

        // User Dashboard Page
        @RequestMapping("/userDashboard")
        public String userDashboard() {
            return "userDashboard.jsp"; // User dashboard page
        }
    }
