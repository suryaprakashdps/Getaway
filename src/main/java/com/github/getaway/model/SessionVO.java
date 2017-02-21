package com.github.getaway.model;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;

@Scope(value="session" , proxyMode = ScopedProxyMode.INTERFACES)

@Component("sessionholder")

public class SessionVO implements ISessionVO {
	
	private Login userVO=null;

	public Login getUserVO() {
		return userVO;
	}

	public void setUserVO(Login userVO) {
		this.userVO = userVO;
	}

}
