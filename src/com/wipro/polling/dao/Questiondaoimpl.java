package com.wipro.polling.dao;

import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;

import org.apache.catalina.connector.Request;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.wipro.polling.model.Question;
import com.wipro.polling.model.userpoll;

@Repository("questiondao")
public class Questiondaoimpl implements Questiondao {
	@Autowired
	private SessionFactory sessionFactory;
	@Autowired
	HttpSession session;
	@Transactional
	@Override
	public String doadd(Question question)
	{
		
		System.out.println("-----"+question.getOption1());
		sessionFactory.getCurrentSession().save(question);
		return "adminhome";
	}
	@Transactional
	@Override
	public String doans(userpoll ans)
	{ 
		
	sessionFactory.getCurrentSession().save(ans);
        return "userhome";
   
	}
	@Transactional
	@Override
	public String doupdate(Question question) {
		sessionFactory.getCurrentSession().saveOrUpdate(question);
		return "edit";
	}

}
