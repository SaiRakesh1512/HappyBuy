package com.components;

import java.io.Serializable;

public interface EmailSenderV1 extends Serializable {
	public void sendEmail(String to, String subject, String body);
}
