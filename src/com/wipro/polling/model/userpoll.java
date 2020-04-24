package com.wipro.polling.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="user1234")
public class userpoll {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "sno")
	@SequenceGenerator(name = "sno", sequenceName = "answer_id_seq")
	private int sno;
private String rollno;
private String qid;
private String que;
private String a;
private String b;
private String c;
private String d;
private String ans;


public String getRollno() {
	return rollno;
}
public void setRollno(String rollno) {
	this.rollno = rollno;
}
public String getId() {
	return qid;
}
public void setId(String id) {
	this.qid = id;
}
public String getQue() {
	return que;
}
public void setQue(String que) {
	this.que = que;
}
public String getA() {
	return a;
}
public void setA(String a) {
	this.a = a;
}
public String getB() {
	return b;
}
public void setB(String b) {
	this.b = b;
}
public String getC() {
	return c;
}
public void setC(String c) {
	this.c = c;
}
public String getD() {
	return d;
}
public void setD(String d) {
	this.d = d;
}
public String getAns() {
	return ans;
}
public void setAns(String ans) {
	this.ans = ans;
}


}
