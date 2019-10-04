package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import test.DB_connection;
import test.User_Bean;

public class Edit_values {

	
public User_Bean get_values_of_user(String s1_no) {
		
        DB_connection obj_db = new DB_connection();
		Connection connection = obj_db.get_connection();
		
		
		//query to take all the values from the tables
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		List<User_Bean> list=new ArrayList<User_Bean>();
		
		
		User_Bean obj_User_Bean=new User_Bean();

		try {
			String query="select * from user where s1_no=?";
			ps=connection.prepareStatement(query);
			ps.setString(1, s1_no);
			rs=ps.executeQuery();
		
			
			while (rs.next()) {
//				System.out.println("---------------------------------------------------------------------------------------------");
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
				
				
			}
			
			
		} catch (Exception e) {
				System.out.println(e);
		}
		return obj_User_Bean;
}
public void edit_user(User_Bean obj_User_Bean) {
	
    DB_connection obj_db = new DB_connection();
	Connection connection = obj_db.get_connection();
	
	
	//query to take all the values from the tables
	PreparedStatement ps=null;
	
	
	List<User_Bean> list=new ArrayList<User_Bean>();
	

	try {
		String query="update user set user_name=?,email=?,mobile=?,Gender=?,Address=? where s1_no=?";
		ps=connection.prepareStatement(query);
		
		ps.setString(1, obj_User_Bean.getUser_name());
		ps.setString(2, obj_User_Bean.getEmail());
		ps.setString(3, obj_User_Bean.getMobile());
//		ps.setString(4, obj_User_Bean.getMobile());
		ps.setString(4, obj_User_Bean.getGender());
		ps.setString(5, obj_User_Bean.getAddress());
        ps.setString(6, obj_User_Bean.getS1_no());
		
		ps.executeUpdate();
	
		
		
		
	} catch (Exception e) {
			System.out.println(e);
	}
	System.out.println("values started here");
	System.out.println(list);

}





}