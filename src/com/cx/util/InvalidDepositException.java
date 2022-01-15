package com.cx.util;
public class InvalidDepositException extends RuntimeException{
		
	private static final long serialVersionUID = 1L;

	public InvalidDepositException() {
		super();
	}
	
	public InvalidDepositException(String massage) {
		super(massage);
	}
	
}
