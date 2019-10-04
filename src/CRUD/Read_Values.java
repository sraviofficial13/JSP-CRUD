package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import test.DB_connection;
import test.User_Bean;

public class Read_Values {
	
	public static void main(String[] args) {
		
		Read_Values obj_Read_Values=new Read_Values();
		
		obj_Read_Values.get_values();
	}

	public List<User_Bean> get_values() {
		
        DB_connection obj_db = new DB_connection();
		Connection connection = obj_db.get_connection();
		
		
		//query to take all the values from the tables
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		List<User_Bean> list=new ArrayList<User_Bean>();
		
		
		
		try {
			String query="select * from user";
			ps=connection.prepareStatement(query);
			rs=ps.executeQuery();
		
			
			while (rs.next()) {
				User_Bean obj_User_Bean=new User_Bean();
//				System.out.println(rs.getString("s1_no"));
//				System.out.println(rs.getString("user_name"));
//				System.out.println(rs.getString("email"));
//				System.out.println(rs.getString("mobile"));

				
				obj_User_Bean.setS1_no(rs.getString("s1_no"));
				obj_User_Bean.setUser_name(rs.getString("user_name"));
				obj_User_Bean.setEmail(rs.getString("email"));
				obj_User_Bean.setMobile(rs.getString("mobile"));
			    obj_User_Bean.setGender(rs.getString("Gender"));
				obj_User_Bean.setAddress(rs.getString("Address"));
				

				list.add(obj_User_Bean);
			}
			
			
		} catch (Exception e) {
				System.out.println(e);
		}
		System.out.println("values started herer");
		System.out.println(list);
		return list;
		
		
		
		
	}
	
	
	
}
