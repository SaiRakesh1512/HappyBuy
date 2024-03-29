package com;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan
public class HappyBuyApplication {

	public static void main(String[] args) {
		SpringApplication.run(HappyBuyApplication.class, args);
	}

}
