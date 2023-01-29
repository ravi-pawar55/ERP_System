package com.connection;

public class TimeDate {

	public static java.sql.Timestamp getTime() {
		java.util.Date t = new java.util.Date();

		return new java.sql.Timestamp(t.getTime());
	}

}
