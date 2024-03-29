package com.components;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;

public class SmsSender {
	public static final String ACCOUNT_SID = "AC8c7e201d3015519da0bd025dedc25c33";
	public static final String AUTH_TOKEN = "2c8c661e6eafb885012b037e78582a87";

	public static void sendSms(String phoneNumber, String smsBody) {
		Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
		Message message = Message.creator(
						new com.twilio.type.PhoneNumber("+91"+phoneNumber),
						new com.twilio.type.PhoneNumber("+12673768897"),
						smsBody).create();

		System.out.println(message.getSid());
	}

}
