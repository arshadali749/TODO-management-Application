package com.aliarshad.todo.main.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aliarshad.todo.main.model.Todo;
import com.aliarshad.todo.main.model.User;
import com.aliarshad.todo.main.service.TodoService;

@Controller
public class TodoController {
	@Autowired
	private TodoService todoservice;
	@Autowired
	HttpSession session;

	@RequestMapping("/todos")
	public String home(Model model) {
		User currentuser=(User) session.getAttribute("currentuser");
		model.addAttribute("todos", todoservice.getTodosByUser(currentuser));
		return "todos.jsp";
	}

	@RequestMapping("/insert_todo")
	public String insertTodo(Todo todo) {
		User user = (User) session.getAttribute("currentuser");
		todo.setUser(user);
		todoservice.insert_todo(todo);

		return "redirect:/todos";

	}

	@RequestMapping("/delete_todo/{id}")
	public String deleteTodo(@PathVariable int id) {

		todoservice.deleteTodo(id);

		return "redirect:/todos";

	}

	@RequestMapping("/edit_todo/{id}")
	public String editTodo(@PathVariable int id, Model model) {

		model.addAttribute("todo", todoservice.getTodoById(id));

		return "/edit_todo.jsp";

	}

	@RequestMapping("/update_todo")
	public String updateTodo(Todo todo) {

		todoservice.updateTodo(todo);
		return "redirect:/todos";

	}

}
