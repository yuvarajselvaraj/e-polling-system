package com.wipro.polling.dao;

import com.wipro.polling.model.Adminlogin;
import com.wipro.polling.model.Login;

public interface Logindao {
	String doRegister(Login login);
	Adminlogin domail(String email);
	Adminlogin doAlogin(String email,String password);
	Login dologin(String rollno,String password);
	String doadminRegister(Adminlogin login);
}
