package com.grownited.util;
 public class OtpGenerator {
	 public static String generateOTP(int n) // 5 10
	 {
		 // choose a character random from this string
		 String  alphaNumericString  = "ABCDEFGHIJKMNOPQRTSUVWXYZ" + "0123456789" + "abcdefghijklmnopqrstuvwxyz";
		 // create StringBuffer size of AlphaNumericString
		 StringBuilder sb = new StringBuilder(n);
		 for (int i=0; i<n;i++) {
			 //generate a random number between 
			 // 0 to AlphaNumeric variable length
			 int index = (int)(alphaNumericString.length() * Math.random());
			 
			 // add character one by one in end of sb
			 sb.append(alphaNumericString.charAt(index)); //M9YZ3
			 
		 }
		 return sb.toString();
	 }
 }
	
 