package com.askj.test;

import java.text.ParseException;

import com.askj.util.DateUtil;

public class Test1 {
	public static void main(String[] args) {
		try {
			System.out.println(DateUtil.dateDiff("2015-05-13 10:17:25", "2015-05-13 10:17:44", "yyyy-MM-dd HH:mm:ss"));
		} catch (ParseException e) {
			e.printStackTrace();
			System.out.println(">>>>>error");
		}
	}
}
