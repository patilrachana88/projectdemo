package com.example.learner.admin.copy2;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class AdminDao {
	public String addadmin(Admin admin) {
		DbUtil dbutil=new DbUtil();
		Session session=dbutil.dbconn();
		Transaction tran =session.beginTransaction();
		Admin ad=new Admin();
		ad.setUser(admin.getUser());
		ad.setPassword(admin.getPassword());
		String value=(String) session.save(ad);
		tran.commit();
		session.close();
		return value;
		
	}
	
	public Admin validator(Admin admin) {
		DbUtil dbutil=new DbUtil();
		Session session=dbutil.dbconn();
		Transaction tran =session.beginTransaction();
		Admin newadmin=session.get(Admin.class, admin.getUser());
		tran.commit();
		session.close();
		return newadmin;
		
		
	}

}
