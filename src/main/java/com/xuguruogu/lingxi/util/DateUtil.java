package com.xuguruogu.lingxi.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;

public class DateUtil {
	public static String now(String format){
		return new SimpleDateFormat(format).format(System.currentTimeMillis());
	}
	
	public static String dateDiff(String startTime, String endTime, String format) throws ParseException {
		//按照传入的格式生成一个simpledateformate对象
		SimpleDateFormat sd = new SimpleDateFormat(format);
		long nd = 1000*24*60*60;//一天的毫秒数
		long nh = 1000*60*60;//一小时的毫秒数
		long nm = 1000*60;//一分钟的毫秒数
		long ns = 1000;//一秒钟的毫秒数long diff;try {
		//获得两个时间的毫秒时间差异
		long diff = sd.parse(endTime).getTime() - sd.parse(startTime).getTime();
		long day = diff/nd;//计算差多少天
		long hour = diff%nd/nh;//计算差多少小时
		long min = diff%nd%nh/nm;//计算差多少分钟
		long sec = diff%nd%nh%nm/ns;//计算差多少秒//输出结果
		if(day>0){
			return day+"天前";
		}else if(hour>0){
			return hour+"小时前";
		}else if(min>0){
			return min+"分钟前";
		}else{
			if(format.equals("yyyy-MM-dd HH:mm")){
				return "1分钟前";
			}else{
				return sec+"分钟前";
			}
		}
	}
}
