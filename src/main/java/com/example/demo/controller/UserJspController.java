package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.model.User;
import com.example.demo.repository.UserRepository;

@Controller
@RequestMapping("/jsp")
public class UserJspController {
	@Autowired
    private UserRepository userRepository;

    // get all users
    @GetMapping("/users")
    public List<User> getAllUsers()
    {
        return userRepository.findAll();
    }
	
	@RequestMapping(value="/viewUsers", method=RequestMethod.GET)
	public String viewUsers(Model model) {
		model.addAttribute("users", userRepository.findAll());
		return "view-users";
	}
}
