package com.wipro.polling.dao;

import javax.servlet.http.HttpSession;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.wipro.polling.mail.Mail;
import com.wipro.polling.model.Login;

@Repository("loginDao")
public class Logindaoimpl implements Logindao {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	HttpSession session;
	
	@Transactional
	@Override
	public String doRegister(Login login)
	{
		sessionFactory.getCurrentSession().save(login);
		return "index";
	}
	@Transactional
	@Override
	public Login dologin(String rollno, String password) {
		
		Login login = (Login) sessionFactory.getCurrentSession().get(Login.class,rollno );
		if(login!=null && login.getPassword().equals(password)){
			String str=login.getRollno();
			System.out.print(login.getDesignation());
			session.setAttribute("uid",str);
			return login;
		}
		return null;
	}
	@Transactional
	@Override
	public Login domail(String email) {
		System.out.println(email);
		Login login = (Login) sessionFactory.getCurrentSession().get(Login.class,email );
		if(login!=null ) {
			Mail.main(login.getEmail(),login.getPassword(),login.getFirstname()+" "+login.getLastname());
			return login;
		}
		return null;
	}
}
