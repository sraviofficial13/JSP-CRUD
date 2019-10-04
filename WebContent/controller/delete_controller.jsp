<%@page import="CRUD.Delete_values"%>
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

Delete_values obj_Delete_values=new Delete_values();
obj_Delete_values.delete_values(s1_no);

%>

<script type="text/javascript">

window.location.href="http://localhost:8080/MYPROJECT_CRUD/index_vaues.jsp";



</script>



</body>
</html>