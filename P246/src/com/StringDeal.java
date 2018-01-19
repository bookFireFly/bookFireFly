package com;

public class StringDeal {
	public static String shiftEnter (String str) {
		String newStr = str.replace("\r\n", "<br>");
		newStr = newStr.replaceAll(" ", "&nbsp");
		return newStr;
	}
}
