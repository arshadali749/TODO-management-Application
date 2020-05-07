package com.aliarshad.todo.main.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.aliarshad.todo.main.model.Todo;
import com.aliarshad.todo.main.model.User;
@Repository
public interface TodoDao extends JpaRepository<Todo,Integer>  {

	List<Todo> findByUser(User user);
}
