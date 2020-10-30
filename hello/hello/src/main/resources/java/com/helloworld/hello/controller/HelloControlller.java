package com.helloworld.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello")
public class HelloControlller {
@GetMapping("/get2")
public String hello() {
	return "hello generation!!!";}
	
	
		@GetMapping("/get1")
		public String mentalidades() {
			return "mentalidade de crescimento,trabalho em equipe,persistencia,responsabilidade pessoal. ";
		}
	
	
	
	}

