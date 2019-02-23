package com.formatter.model;

/**
 * <p>Problem sending result email.</p>
 * 
 * @author <a href="mailto:elabedouss@gmail.com">Oussama El Abed</a>
 *
 */

public class MailException extends Exception {
	
	private static final long serialVersionUID = 1L;
	
	public MailException(String message) {
		super(message);
	}
}
