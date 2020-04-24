package com.wipro.polling.service;

import com.wipro.polling.model.Adminlogin;
import com.wipro.polling.model.Login;

public interface Loginservice {
	String doRegister(Login login);
	Adminlogin doAlogin(String email,String password);
	Login dologin(String rollno,String password);
	String doadminRegister(Adminlogin login);
	Adminlogin domail(String email);
}
