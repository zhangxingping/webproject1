package com.mbsq.domain.test;

import com.mbsq.utils.MD5Encoder;

public class MD5 {
	public static void main(String[] args) {
		String u="user";
		try {
			u=MD5Encoder.encode(MD5Encoder.encode(MD5Encoder.encode(MD5Encoder.encode(u)))).toString();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(u);
	}
}
