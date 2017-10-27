package com.fly.bean;

public class Convert {
	public String arr2Str(String[] arr) {
		StringBuffer sb = new StringBuffer();
		if (arr!=null && arr.length>0) {
			for (String s:arr) {
				sb.append(s);
				sb.append(",");
			}
			if (sb.length()>0) {
				sb.deleteCharAt(sb.length()-1);
			}
		}
		return sb.toString();
	}
}
