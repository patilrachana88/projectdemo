package com.example.learner.teacher;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class TeacherDao {
	public int addteacher(Teacher teacher) {
		DbUtil dbutil=new DbUtil();
		Session session=dbutil.dbconn();
		Transaction tran=session.beginTransaction();
		Teacher t=new Teacher();
		t.setTname(teacher.getTname());
		int value=(Integer) session.save(t);
		tran.commit();
		session.close();
		return value;
		
	}
	
	public List<Teacher> display(){
		DbUtil dbutil=new DbUtil();
		Session session=dbutil.dbconn();
		Transaction tran=session.beginTransaction();
		Query q=session.createQuery("from Teacher");
		List<Teacher> list=q.list();
		tran.commit();
		session.close();
		return list;
	}

}
