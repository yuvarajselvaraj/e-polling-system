package com.wipro.polling.dao;

import com.wipro.polling.model.Login;

public interface Logindao {
	String doRegister(Login login);
	Login domail(String email);
	Login dologin(String rollno,String password);
	
}
