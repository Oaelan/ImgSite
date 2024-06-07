package org.hj.service;

import org.hj.model.LoginVO;


public interface LoginService {

	public LoginVO login(LoginVO lvo);
	
	public void joinSuccess(LoginVO lvo);
	
}
