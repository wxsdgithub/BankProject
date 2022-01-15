package com.cx.util;

public class AccountOverDrawnException extends RuntimeException {

	private static final long serialVersionUID = 1L;
	
	public AccountOverDrawnException() {
		super();
	}
	
	public AccountOverDrawnException(String massage) {
		super(massage);
	}
	
}
