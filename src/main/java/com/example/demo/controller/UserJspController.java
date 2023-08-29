package com.example.demo.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
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
	
	@GetMapping("/register")
	public String showForm(Model model) {
		User user = new User();
		model.addAttribute("user", user);
	    return "registerEmployee";
	}
	
	@PostMapping("/register")
	public String submitForm(@ModelAttribute("user") User user) {
	     
	    System.out.println("new registration");
	    Map<String, Boolean> response = new HashMap<>();

        Boolean bool = userRepository.insert(user) > 0 ?
                response.put("created", Boolean.TRUE) :
                response.put("created", Boolean.FALSE);
        System.out.println("created: "+bool);
        
	    return "register_success";
	}
	

}
