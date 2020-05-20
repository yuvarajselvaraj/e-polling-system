package com.wipro.polling.service;

import com.wipro.polling.model.Question;
import com.wipro.polling.model.userpoll;

public interface Questionservice {
	public String doadd(Question question);
	public String doans(userpoll ans);
	public String doupdate(Question questionbean);
}
