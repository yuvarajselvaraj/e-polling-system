package com.wipro.polling.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="answer")
public class userpoll {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "sno")
	@SequenceGenerator(name = "sno", sequenceName = "answer_id_seq")
	private int sno;
	@Column(updatable = false, name = "rollno", nullable = false, length=50)
private String rollno;
private String qid;
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
public String getAns() {
	return ans;
}
public void setAns(String ans) {
	this.ans = ans;
}


}
