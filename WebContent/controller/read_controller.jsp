<%@page import="CRUD.Read_Values"%>
<%@page import="java.util.Iterator"%>
<%@page import="test.User_Bean"%>
<%@page import="java.util.List"%>
<%@page import="org.json.JSONObject,org.json.JSONException,java.util.* %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="org.json.JSONArray,org.json.JSONException"
    
    %>


<%


Read_Values obj_Read_Values=new Read_Values();
List<User_Bean> list=obj_Read_Values.get_values();
Iterator<User_Bean> it_list=list.iterator();
System.out.println("-000000000000000000000000000000000000000000000000000");
System.out.println(it_list);

while(it_list.hasNext()){
    User_Bean obj_User_Bean=new User_Bean();
    obj_User_Bean=it_list.next();
    
    %>
    <%@ taglib prefix="json" uri="http://www.atg.com/taglibs/json" %>

    <json:object>
      <json:array name="users" var="users">
        <json:object>
          <json:property name="s1_no" value="${obj_User_Bean.getS1_no()}"/>
          <json:property name="user_name" value="${obj_User_Bean.getUser_name()}"/>
          <json:property name="email" value="${obj_User_Bean.getEmail()}}"/>
          <json:property name="mobile" value="${obj_User_Bean.getMobile()}"/>
          <json:property name="gender" value="${obj_User_Bean.getGender()}"/>
          <json:property name="address" value="${obj_User_Bean.getAddress()}"/>
        </json:object>
      </json:array>
    </json:object>

   <%  
    
}


response.setContentType("application/json");
response.getWriter().write("hiiihihihih");

//response.getWriter().print();



%>

