package com.aliarshad.todo.main.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class User {
	@Id
	@GeneratedValue
	private int id;
	private String username;
	private String password;
	private String picurl;
	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
	private List<Todo> todos;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPicurl() {
		return picurl;
	}
	public void setPicurl(String picurl) {
		this.picurl = picurl;
	}
	public List<Todo> getTodos() {
		return todos;
	}
	public void setTodos(List<Todo> todos) {
		this.todos = todos;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", picurl=" + picurl
				+ ", todos=" + todos + "]";
	}

	}
