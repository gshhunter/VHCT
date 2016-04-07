package com.health.util;

import java.util.regex.Pattern;

public class ValidateNumOrString {
	
	/**
	 * Validate post code
	 * @param str
	 * @return boolean
	 */
	public static boolean isPostcode(String str) {
		if (str != null) {
			try {
				String regex = "^[3,8][0-9][0-9][0-9]$";
				boolean is = Pattern.matches(regex, str);
				return is;
			} catch(NumberFormatException exception) {
				exception.printStackTrace();
				return false;
			}
		} else {
			return false;
		}
	}
	
	public static void main(String args[]) {
		System.out.println(ValidateNumOrString.isPostcode("3266"));
		System.out.println(ValidateNumOrString.isPostcode("4097"));
		System.out.println(ValidateNumOrString.isPostcode("30970"));
		System.out.println(ValidateNumOrString.isPostcode(null));
	}
}
