package CRUD;

import java.sql.Connection;

import java.sql.PreparedStatement;


import test.DB_connection;



public class Insert_values {
	


	public int insert_value(String s1_no, String user_name, String email, String mobile, String Gender, String Address) {
		System.out.println(s1_no);
		System.out.println(user_name);
		System.out.println(email);
		System.out.println(mobile);
		System.out.println(Gender);
		System.out.println(Address);
		
		//object of connection class
		DB_connection obj_db = new DB_connection();
		
		
		//Called connection methods
		Connection connection = obj_db.get_connection();
		
		
		PreparedStatement ps = null;
		
		try {
		String query = "insert into user(s1_no,user_name,email,mobile,Gender,Address) values(?,?,?,?,?,?)";
		ps=connection.prepareStatement(query);
		System.out.println(ps);
		ps.setString(1, s1_no);
		ps.setString(2, user_name);
		ps.setString(3, email);
		ps.setString(4, mobile);
		ps.setString(5, Gender);
		ps.setString(6, Address);
		
		ps.executeUpdate();
		return 1;
		
		}
		catch(Exception e) {
			System.err.println(e);
		}
		return 0;
	}

}
