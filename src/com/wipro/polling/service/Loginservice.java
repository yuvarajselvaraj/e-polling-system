package com.wipro.polling.service;

import com.wipro.polling.model.Login;

public interface Loginservice {
	String doRegister(Login login);
	Login dologin(String rollno,String password);
	Login domail(String email);
}
