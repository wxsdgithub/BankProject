package com.cx.util;

public class RegisterException extends RuntimeException{
	private static final long serialVersionUID = 1L;
	
	public RegisterException(){
		super();
	}
	
	public RegisterException(String message){
		super(message);
	}
}
