package com.example.learner.student;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class StudentDao {
	
	public int addstudents(Student st) {
		DbUtil dbutil=new DbUtil();
		Session session=dbutil.dbconn();
		Transaction tran=session.beginTransaction();
		Student s=new Student();
		s.setFirstname(st.getFirstname());
		s.setLstname(st.getLstname());
		s.setPhoneno(st.getPhoneno());
		s.setAddress(st.getAddress());
		s.setDateofbirth(st.getDateofbirth());
		s.setStudentclass(st.getStudentclass());
		int value=(Integer) session.save(s);
		tran.commit();
		session.close();
		return value;
	}
	
	public List<Student> display() {
		DbUtil dbutil=new DbUtil();
		Session session=dbutil.dbconn();
		Transaction tran=session.beginTransaction();
		Query q=session.createQuery("from Student");
		List<Student> list=q.list();
		tran.commit();
		session.close();
		return list;
	}
	
	

}
