package com.example.demo.util;

import java.io.FileNotFoundException;

import org.springframework.util.ResourceUtils;

public class Test {

	public static void main(String[] args) throws FileNotFoundException {
		// TODO Auto-generated method stub
		System.out.println(ResourceUtils.getURL("resources/static").toString());
		
		
	}

}
