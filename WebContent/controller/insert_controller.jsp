<%@page import="CRUD.Insert_values"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%
String s1_no=request.getParameter("s1_no");
String email=request.getParameter("email");
String user_name=request.getParameter("user_name");
String mobile=request.getParameter("mobile");
String Gender=request.getParameter("Gender");
String Address=request.getParameter("Address");



System.out.println(s1_no);
System.out.println(email);
System.out.println(user_name);
System.out.println(mobile);
System.out.println(Gender);
System.out.println(Address);

Insert_values obj_insert = new Insert_values();

response.getWriter().print(obj_insert.insert_value(s1_no, user_name, email, mobile, Gender, Address));



%>

