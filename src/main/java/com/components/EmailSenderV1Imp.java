package com.components;

import java.io.FileInputStream;
import java.io.Serializable;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.util.ResourceUtils;

public class EmailSenderV1Imp implements EmailSenderV1, Serializable {

	private String from;
	private String password;

	private void loadCreds() {
		try(FileInputStream fis = new FileInputStream(ResourceUtils.getFile("classpath:mailcredentials.properties"))) {
		Properties props = new Properties();
		props.load(fis);
		from = (String) props.get("email");
		password = (String) props.get("password");
		}catch(Exception e) {System.err.println("can't get Gmail Creds...");}
	}
	
	@Override
	public void sendEmail(String to, String subject, String body) {
		loadCreds();
		// Get properties object
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");
		props.put("mail.smtp.ssl.checkserveridentity", true); 
		// get Session
		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(from, password);
			}
		});
		// compose message
		try {
			MimeMessage message = new MimeMessage(session);

			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			message.setSubject(subject);
			message.setText(body);
			// send message
			Transport.send(message);
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}

	}

}
