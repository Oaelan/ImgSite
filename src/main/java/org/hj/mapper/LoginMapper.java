package org.hj.mapper;

import org.hj.model.LoginVO;

public interface LoginMapper {

	public LoginVO login(LoginVO lvo);
	
	public void joinSuccess(LoginVO lvo);
	
}
