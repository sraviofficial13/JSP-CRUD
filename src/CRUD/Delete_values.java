package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import test.DB_connection;
import test.User_Bean;

public class Delete_values {
public void delete_values(String s1_no) {
		
        DB_connection obj_db = new DB_connection();
		Connection connection = obj_db.get_connection();
		
		
		//query to take all the values from the tables
		PreparedStatement ps=null;
		
		
		List<User_Bean> list=new ArrayList<User_Bean>();
		
		try {
			String query="delete from user where s1_no=?";
			ps=connection.prepareStatement(query);
			ps.setString(1, s1_no);
			ps.executeUpdate();
		
		} catch (Exception e) {
				System.out.println(e);
		}
		System.out.println("values started here");
		System.out.println(list);
	
}
}
