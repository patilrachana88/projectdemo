package com.example.learner.admin.copy2;

import javax.persistence.Entity;

import javax.persistence.Id;

@Entity
public class Admin {
@Id

private String user;
private String password;
public String getUser() {
	return user;
}
public void setUser(String user) {
	this.user = user;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

}
