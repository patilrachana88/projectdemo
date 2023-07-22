package com.example.learner.subject;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class SubjectDao {
	
	public int addsubject(Subject sb) {
		DbUtil dbutil=new DbUtil();
		Session session=dbutil.dbconn();
		Transaction tran=session.beginTransaction();
		Subject sub=new Subject();
		sub.setSubname(sb.getSubname());
		int value=(Integer) session.save(sub);
		tran.commit();
		session.close();
		return value;
	}
	
	public List<Subject> display(){
		DbUtil dbutil=new DbUtil();
		Session session=dbutil.dbconn();
		Transaction tran=session.beginTransaction();
		Query q=session.createQuery("from Subject");
		List<Subject> list=q.list();
		tran.commit();
		session.close();
		return list;
	}

}
