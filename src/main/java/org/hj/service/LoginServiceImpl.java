package org.hj.service;

import org.hj.mapper.LoginMapper;
import org.hj.model.LoginVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	LoginMapper lm;
	
	@Override
	public LoginVO login (LoginVO lvo) {
		System.out.println("login service 실행..");
		return lm.login(lvo);
	}
	
	public void joinSuccess(LoginVO lvo) {
		lm.joinSuccess(lvo);
		System.out.println("회원정보 등록");
	}
	
}
