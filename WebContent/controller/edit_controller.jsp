<%@page import="CRUD.Edit_values"%>
<%@page import="test.User_Bean"%>
<%@page import="CRUD.Insert_values"%>
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
String s1_no=request.getParameter("s1_no");
String email=request.getParameter("email");
String user_name=request.getParameter("user_name");
String mobile=request.getParameter("mobile");
String Gender=request.getParameter("Gender");
String Address=request.getParameter("Address");




User_Bean obj_User_Bean=new User_Bean();
obj_User_Bean.setS1_no(s1_no);
obj_User_Bean.setUser_name(user_name);
obj_User_Bean.setEmail(email);
obj_User_Bean.setMobile(mobile);
obj_User_Bean.setGender(Gender);
obj_User_Bean.setAddress(Address);

Edit_values obj_Edit_values=new Edit_values();
obj_Edit_values.edit_user(obj_User_Bean);


%>

<script type="text/javascript">

window.location.href="http://localhost:8080/MYPROJECT_CRUD/index_vaues.jsp";





</script>



</body>
</html>