package com.aliarshad.todo.main.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aliarshad.todo.main.model.User;
import com.aliarshad.todo.main.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userservice;
	@Autowired
	HttpSession session;

	
	@RequestMapping("/insert_user")
	public String insertUser(User user) {
		userservice.insert_user(user);
		return "login.jsp";

	}

	

	@RequestMapping("/update_user")
	public String updateUser(User user) {
		userservice.updateUser(user);
		session.removeAttribute("currentuser");
		session.setAttribute("currentuser",user);
		return "redirect:/todos";

	}
}
