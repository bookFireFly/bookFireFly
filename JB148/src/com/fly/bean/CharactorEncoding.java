package com.fly.bean;

import java.io.UnsupportedEncodingException;

public class CharactorEncoding {


	public String toString(String str) {
		String text="";
			if (str!="" && !"".equals(str)) {
				try {
					text = new String(str.getBytes("ISO-8859-1"),"GB18030");
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		return text;
	}

	
	
}
