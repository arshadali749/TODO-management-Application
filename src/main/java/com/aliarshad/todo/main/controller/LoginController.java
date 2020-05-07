package com.aliarshad.todo.main.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aliarshad.todo.main.model.User;
import com.aliarshad.todo.main.service.UserService;

@Controller
public class LoginController {
	@Autowired
	private UserService userservice;
	@Autowired
	private HttpSession session;

	@RequestMapping("/")
	public String home() {
		return "login.jsp";
	}

	@RequestMapping("/user_sign_up")
	public String validateUser() {
		return "user_sign_up.jsp";
	}

	@RequestMapping("/user_login")
	public String validateUser(User u) {
		User user = userservice.getuserByusernameAndPassword(u.getUsername(), u.getPassword());
		System.out.println("USER:" + user);
		if (user != null) {

			
			session.setAttribute("currentuser", user);

			return "redirect:/todos";
		}

		else
			return "redirect:/";
	}

	@RequestMapping("/logout")
	public String logoutUser() {
		session.removeAttribute("currentuser");
		return "redirect:/";
	}
}
