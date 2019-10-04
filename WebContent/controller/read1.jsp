<%@page import="CRUD.Read_Values"%>
<%@page import="java.util.Iterator"%>
<%@page import="test.User_Bean"%>
<%@page import="java.util.List"%>



<%


Read_Values obj_Read_Values=new Read_Values();
List<User_Bean> list=obj_Read_Values.get_values();
Iterator<User_Bean> it_list=list.iterator();



while (it_list.hasNext()) {
    User_Bean obj_User_Bean=new User_Bean();
    obj_User_Bean=it_list.next();

/*    object.put("s1_no", obj_User_Bean.getS1_no());
    object.put("user_name", obj_User_Bean.getUser_name());
        
   object.put("email", obj_User_Bean.getEmail());
    object.put("mobile", obj_User_Bean.getMobile());
        
   object.put("gender", obj_User_Bean.getGender());
    object.put("address", obj_User_Bean.getAddress()); */
    out.println("<td>" +obj_User_Bean.getS1_no()+ "hiiiiiiiiiiiiiiiiiiiiiiiii"+"</td>");
    out.println("<td>" +obj_User_Bean.getUser_name()+ "</td>");
    out.println("<td>" +obj_User_Bean.getEmail()+ "</td>");
    out.println("<td>" +obj_User_Bean.getMobile()+ "</td>");
    out.println("<td>" +obj_User_Bean.getGender()+ "</td>");
    out.println("<td>"+obj_User_Bean.getAddress()+ "</td>");
    

	

}



System.out.println(")))))))))))))))))))))))))))))))))))))))))))))))");
/* response.setContentType("application/json");
response.getWriter().write(object.toString());  */

//response.getWriter().print();



%>






    