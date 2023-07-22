package com.example.learner.student;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Student {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private int sid;
private String firstname;
private String lstname;
private long phoneno;
private String address;
@Temporal(TemporalType.DATE)
private Date dateofbirth;
private String studentclass;
public int getSid() {
	return sid;
}
public void setSid(int sid) {
	this.sid = sid;
}
public String getFirstname() {
	return firstname;
}
public void setFirstname(String firstname) {
	this.firstname = firstname;
}
public String getLstname() {
	return lstname;
}
public void setLstname(String lstname) {
	this.lstname = lstname;
}
public long getPhoneno() {
	return phoneno;
}
public void setPhoneno(long phoneno) {
	this.phoneno = phoneno;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public Date getDateofbirth() {
	return dateofbirth;
}
public void setDateofbirth(Date dateofbirth) {
	this.dateofbirth = dateofbirth;
}
public String getStudentclass() {
	return studentclass;
}
public void setStudentclass(String studentclass) {
	this.studentclass = studentclass;
}



}
