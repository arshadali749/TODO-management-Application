package com.aliarshad.todo.main.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.aliarshad.todo.main.model.User;
@Repository
public interface UserDao extends JpaRepository<User,Integer>  {

	public User findByUsernameAndPassword(String username,String password);
}
