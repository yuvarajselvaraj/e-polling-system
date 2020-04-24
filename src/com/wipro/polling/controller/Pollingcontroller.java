package com.wipro.polling.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wipro.polling.mail.Mail;
import com.wipro.polling.model.Adminlogin;
import com.wipro.polling.model.Login;
import com.wipro.polling.model.Question;
import com.wipro.polling.model.userpoll;
import com.wipro.polling.service.Loginservice;
import com.wipro.polling.service.Questionservice;

@Controller
public class Pollingcontroller {
	@Autowired
	private Loginservice loginService;
	
	@Autowired
    private Questionservice questionservice;  
    
@RequestMapping(value="student")
public String dostart()
{
	return "index";
}
@RequestMapping(value="viewresults2")
public String doviewresults()
{
	return "viewresults2";
}	
@RequestMapping(value="PrintFormParams")
public String doPrintForm()
{
	return "survey";
}
@RequestMapping(value="viewresults3")
public String doviewresults3()
{
	return "viewresults3";
}
@RequestMapping(value="viewresults")
public String doviewpolls()
{
	return "viewresults";
}
@RequestMapping(value="/")
public String dostart0(){
	return "adminindex";
	
}
@RequestMapping(value="viewpoll")
public String doviewpoll()
{
	return "viewpoll";
}
@RequestMapping(value="mail",method=RequestMethod.POST)
public String domail(Model model,@ModelAttribute("loginbean") Adminlogin loginbean)
{  if(loginbean.getEmail()!=null)
{
	if (loginService.domail(loginbean.getEmail()) != null)
	{
		return "adminindex";
	}
	else {
		return "error";
	}
}
else {
	return "error";
}
	
}
@RequestMapping(value="viewpoll1")
public String doviewpoll1()
{
	return "viewpoll1";
}
@RequestMapping(value="viewpoll2")
public String doviewpoll2(Model model,@ModelAttribute("answerbean") userpoll answerbean)
{
	if (answerbean!=null)
	{
		model.addAttribute("msg","you voted successfully");
		return questionservice.doans(answerbean);
	}
	else
	{
		model.addAttribute("msg","failed");
		return "viewpoll";
	}
}
@RequestMapping(value="forgetmail")
public String doforget()
{  
	return "forgetmail";
}
@RequestMapping(value="adminhome")
public String doadminhome()
{
	return "adminhome";
}
@RequestMapping(value="admin")
public String doadminstart()
{
	return "adminindex";
}
@RequestMapping(value="userhome")
public String douserhome()
{
	return "userhome";
}
@RequestMapping(value="addpoll")
public String doaddpoll()
{
	return "addpoll";
}
@RequestMapping(value="/addpoll1",method=RequestMethod.POST)
public String doaddpoll1(Model model,@ModelAttribute("questionbean") Question questionbean)
{
	System.out.println(questionbean.getQuestion()+"----------");
	if(questionbean.getQuestion().length()>0&&(questionbean.getOption1().length()>0&&questionbean.getOption2().length()>0))
	{  
		model.addAttribute("msg","sucess");
		return questionservice.doadd(questionbean);
	}
	else
	{
		model.addAttribute("msg1","failure");
		return "addpoll";
	}
}
@RequestMapping(value="/sregister",method=RequestMethod.POST)
public String doRegister(Model model,@ModelAttribute("loginbean") Login loginbean)
{
	if (loginbean != null && loginbean.getRollno() != null && loginbean.getPassword() != null && loginbean.getEmail()!=null)
			 {
		model.addAttribute("msg", "Registered Successfully");
		return loginService.doRegister(loginbean);
	} 
	else {
		model.addAttribute("error", "Error Occured");
		return "error";
	
}
}
@RequestMapping(value="/slogin",method=RequestMethod.POST)
public String dologin(Model model,@ModelAttribute("loginbean") Login loginBean)
{
	if (loginBean.getRollno() !=null && loginBean.getPassword() != null) {
		
		if (loginService.dologin(loginBean.getRollno(), loginBean.getPassword()) != null) {
			model.addAttribute("uid", loginBean.getRollno());
			return "userhome";
		} else {
			model.addAttribute("error", "Invalid Details");
			System.out.println("else");
			return "index";
		}

	} else {
		model.addAttribute("error", "Please enter Details");
		return "index";
	}
}
@RequestMapping(value="/adminsignup",method=RequestMethod.POST)
public String doadminsignup(Model model,@ModelAttribute("loginbean") Adminlogin loginbean)
{
	if (loginbean != null && loginbean.getFirstname() != null && loginbean.getPassword() != null && loginbean.getLastname()!=null && loginbean.getEmail()!=null)
	 {
model.addAttribute("msg", "Registered Successfully");
return loginService.doadminRegister(loginbean);
} 
else {
model.addAttribute("error", "Error Occured");
return "error";

}
}
@RequestMapping(value="/adminhome1",method=RequestMethod.POST)
public String doadminlogin(Model model,@ModelAttribute("loginbean") Adminlogin loginBean)
{
	if (loginBean.getEmail() !=null && loginBean.getPassword() != null) {
		
		if (loginService.doAlogin(loginBean.getEmail(), loginBean.getPassword()) != null) {
			return "adminhome";
		} else {
			model.addAttribute("error", "Invalid Details");
			System.out.println("else");
			return "adminindex";
		}

	} else {
		model.addAttribute("error", "Please enter Details");
		return "adminindex";
	}
}

}
