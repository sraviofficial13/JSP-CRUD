<%@page import="CRUD.Read_Values"%>
<%@page import="java.util.Iterator"%>
<%@page import="test.User_Bean"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

Read_Values obj_Read_Values=new Read_Values();
List<User_Bean> list=obj_Read_Values.get_values();
Iterator<User_Bean> it_list=list.iterator();
%>

<h1 style="text-align: center;"  class="test">Employee Lists</h1>

<div id="responseData1">

</div>

<table class="table table-bordered qwe">
    <thead>
      <tr>
        <th>Serial Number</th>
        <th>Name</th>
        <th>Email</th>
        <th>Mobile Number</th>
        <th>Gender</th>
        <th>Address</th>
        <th>Edit</th>
        <th>Delete</th>
      </tr>
    </thead>

<% 
     while(it_list.hasNext()){
          User_Bean obj_User_Bean=new User_Bean();
	      obj_User_Bean=it_list.next();
%>	
    <tbody id=responseDataTable>
	<tr>
	    <td><%=obj_User_Bean.getS1_no() %></td>
	    <td><%=obj_User_Bean.getUser_name() %></td>
	    <td><%=obj_User_Bean.getEmail() %></td>
	    <td><%=obj_User_Bean.getMobile() %></td>
	    <td><%=obj_User_Bean.getGender() %></td>
	    <td><%=obj_User_Bean.getAddress() %></td>
	  
	    
	    <td>
	    <a href="edit.jsp?s1_no=<%=obj_User_Bean.getS1_no()%>">Edit</a>
	    </td>
	    <td>
	    <a class="delete" href="controller/delete_controller.jsp?s1_no=<%=obj_User_Bean.getS1_no()%>">Delete</a>
	    </td>
	</tr>
	</tbody>

<%	
}
%>

</table>
</div>

</body>
</html>