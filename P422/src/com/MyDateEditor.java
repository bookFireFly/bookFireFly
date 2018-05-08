package com;

import java.beans.PropertyEditorSupport;
import java.util.Date;

public class MyDateEditor extends PropertyEditorSupport {
	public void setAsText(String text) throws IllegalArgumentException {
		Date date = new Date(text);
		setValue(date);
	}
	
	
}
