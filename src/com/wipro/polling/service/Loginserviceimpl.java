package com.wipro.polling.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wipro.polling.model.Login;
import com.wipro.polling.dao.Logindao;

@Service("loginService")
public class Loginserviceimpl implements Loginservice {
	@Autowired
	private Logindao loginDAO;
	@Override
	  public String doRegister(Login login)
	  {
			return loginDAO.doRegister(login);
	  }
	
	@Override
	public Login dologin(String rollno, String password) {
		return loginDAO.dologin(rollno, password);
	}
	@Override
	public Login domail(String email)
	{
		return loginDAO.domail(email);
	}
}
