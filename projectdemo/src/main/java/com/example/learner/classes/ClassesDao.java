package com.example.learner.classes;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class ClassesDao {
	public int addclasses(Classes cl) {
	DbUtil dbutil=new DbUtil();
	Session session=dbutil.dbconn();
	if(session!=null) {
		System.out.println("connections are done");
	}else {
		System.out.println("check connections");
	}
	Transaction tran=session.beginTransaction();
	Classes newcl=new Classes();
	newcl.setClassname(cl.getClassname());
	int value=(Integer) session.save(newcl);
	tran.commit();
	session.close();
	return value;
}
	public List<Classes> display() {
		DbUtil dbutil=new DbUtil();
		Session session=dbutil.dbconn();
		Transaction tran=session.beginTransaction();
		Query q=session.createQuery("from Classes");
		List<Classes> list=q.list();
		tran.commit();
		session.close();
	return list;
	}
}

