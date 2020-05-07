package com.aliarshad.todo.main.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aliarshad.todo.main.dao.UserDao;
import com.aliarshad.todo.main.model.User;

@Service
public class UserService {

	@Autowired
	private UserDao userdao;

	public void insert_user(User user) {
		userdao.save(user);
	}

	public User getuserByusernameAndPassword(String username, String password) {
		return userdao.findByUsernameAndPassword(username, password);
	}

	public void updateUser(User user) {
		User currentuser = userdao.getOne(user.getId());
		currentuser.setUsername(user.getUsername());
		currentuser.setPassword(user.getPassword());
		currentuser.setPicurl(user.getPicurl());
		userdao.save(user);
	}

}
