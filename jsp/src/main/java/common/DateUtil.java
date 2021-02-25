package common;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
	/**
	 * String -> Date
	 * SimpleDateFormat.parse
	 */
	public static java.sql.Date toDate(String date) {
		Date result=null;
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			try {
				result = dateFormat.parse(date);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return new java.sql.Date(result.getTime());
	}
	/**
	 * Date -> String
	 * SimpleDateFormat.format
	 */
	public static String toStr(Date date) {
		String result = null;
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		result = dateFormat.format(date);
		return result;
	}
	
	/**
	 * Date를 주어진 포맷대로 String으로 변환
	 * Date -> String
	 */
	public static String toStr(Date date, String format) {
		String result = null;
		SimpleDateFormat dateFormat = new SimpleDateFormat(format);
		result = dateFormat.format(date);
		return result;
	}
	/**
	 * 날짜 계산
	 * @param today
	 * @param num
	 * @return meetDay 만난지 100일 뒤 날짜 계산
	 */
	
	public static Date addDate(Date today, int num) {
		Date result = null;
		
		 
		return result;
		
	}
}
