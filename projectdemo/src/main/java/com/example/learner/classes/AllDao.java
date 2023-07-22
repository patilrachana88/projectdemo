package com.example.learner.classes;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.example.learner.student.Student;
import com.example.learner.subject.Subject;
import com.example.learner.teacher.Teacher;

public class AllDao {

	public List<Classes> disaply(){
		DbUtil dbutil=new DbUtil();
		Session session=dbutil.dbconn();
		Transaction tran=session.beginTransaction();
		Query q=session.createQuery("from Classes");
		List<Classes> list=q.list();
		tran.commit();
		session.close();
		return list;
	}

	
	public List<Teacher> disaply1(){
		DbUtil dbutil=new DbUtil();
		Session session=dbutil.dbconn();
		Transaction tran=session.beginTransaction();
		 Query q=session.createQuery("from Teacher");
		List<Teacher> list=q.list();
		tran.commit();
		session.close();
		return list;
	}

	public List<Subject> disaply2(){
		DbUtil dbutil=new DbUtil();
		Session session=dbutil.dbconn();
		Transaction tran=session.beginTransaction();
		Query q=session.createQuery(" from Subject");
		List<Subject> list=q.list();
		tran.commit();
		session.close();
		return list;
	}

	public List<Student> disaply3(){
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
