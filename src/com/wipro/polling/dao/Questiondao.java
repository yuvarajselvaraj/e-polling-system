package com.wipro.polling.dao;

import com.wipro.polling.model.Question;
import com.wipro.polling.model.userpoll;

public interface Questiondao {
 public String doadd(Question question);
 public String doans(userpoll ans);
}
