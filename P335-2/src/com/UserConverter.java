package com;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.apache.struts2.util.StrutsTypeConverter;

public class UserConverter extends StrutsTypeConverter {

	@Override
	public Object convertFromString(Map context, String[] values, Class toClass) {
		User user = new User();
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date date1 = format1.parse(values[0]);
			SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
			String birthday = format2.format(date1);
			user.setDate(birthday);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}

	@Override
	public String convertToString(Map context, Object o) {
		User user = (User) o;
		return "<" + user.getDate() + ">" ;
	}

}
