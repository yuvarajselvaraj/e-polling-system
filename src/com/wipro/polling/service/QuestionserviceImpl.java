package com.wipro.polling.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.polling.dao.Questiondao;
import com.wipro.polling.model.Question;
import com.wipro.polling.model.userpoll;

@Service("Questionservice")
public class QuestionserviceImpl implements Questionservice {
	@Autowired
	private Questiondao questiondao;
	@Override
	  public String doadd(Question question)
	  {
		System.out.println("--serrrrrvvv---"+question.getOption1());
			return questiondao.doadd(question);
	  }
	@Override
	public String doans(userpoll ans)
	{
		return questiondao.doans(ans);
	}
	@Override
	public String doupdate(Question question) {
		// TODO Auto-generated method stub
		return questiondao.doupdate(question);
	}
	
}
