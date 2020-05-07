package com.aliarshad.todo.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aliarshad.todo.main.dao.TodoDao;
import com.aliarshad.todo.main.model.Todo;
import com.aliarshad.todo.main.model.User;

@Service
public class TodoService {

	@Autowired
	private TodoDao tododao;

	public void insert_todo(Todo todo) {
		tododao.save(todo);
	}

	public List<Todo> getTodosByUser(User user) {
		return tododao.findByUser(user);
	}

	public List<Todo> getTodos() {

		return tododao.findAll();
	}

	public void deleteTodo(int id) {
		tododao.deleteById(id);
	}

	public Todo getTodoById(int id) {
		return tododao.getOne(id);
	}
	
	public void updateTodo(Todo updated)
	{
		Todo current=tododao.getOne(updated.getId());
		current.setTitle(updated.getTitle());
		current.setDescription(updated.getDescription());
		current.setDate(updated.getDate());
		tododao.save(current);
	}

}
