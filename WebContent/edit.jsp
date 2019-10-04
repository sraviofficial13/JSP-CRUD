<%@page import="test.User_Bean"%>
<%@page import="CRUD.Edit_values"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  
    
      
   
<title>Insert title here</title>
</head>
<body>
<%
String s1_no=(String)request.getParameter("s1_no");
String checkedMale = "";
String checkedFemale = "";
String checkedOther = "";

Edit_values obj_Edit_values=new Edit_values();

User_Bean obj_User_Bean=obj_Edit_values.get_values_of_user(s1_no);
if(obj_User_Bean.getGender().equals("male") ){
	checkedMale = "checked";
}else if (obj_User_Bean.getGender().equals("female")){
	checkedFemale = "checked";
}else{
	checkedOther= "checked";
}




%>

<div class="container">

  <h2>Edit Employee Value</h2>
  <form action="controller/edit_controller.jsp" method="post" onEdit="event.preventDefault()" >
    
    <div class="form-group">
      <label for="name">Serial Number:</label>
      <input type="text" class="form-control" id="name" placeholder="Enter Serial_number" name="s1_no" value="<%=s1_no %>" required>
    </div>
    <div class="form-group">
      <label for="name">Name:</label>
      <input type="text" class="form-control" id="name" placeholder="Enter Name" name="user_name" value="<%=obj_User_Bean.getUser_name()%>" required>
    </div>
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" value="<%=obj_User_Bean.getEmail()%>" required>
    </div>
    <div class="form-group">
      <label for="mbn">Mobile Number:</label>
      <input type="text" class="form-control" id="mbn" placeholder="Enter Mobile number" name="mobile" value="<%=obj_User_Bean.getMobile()%>" required>
    </div>
     <div class="form-group">
      <label for="Address">Address:</label>
      <input type="text" class="form-control" id="Address" placeholder="Enter Address" name="Address" value="<%=obj_User_Bean.getAddress()%>" required>
      <br>
       <div class="form-group">
        <label for="gen">Gender:</label>
	    <label class="radio-inline">
	      <input type="radio" name="Gender" value="male" <%=checkedMale%>>Male
	    </label>
	    <label class="radio-inline">
	      <input type="radio" name="Gender" value="female" <%=checkedFemale%>>Female
	    </label>
	    <label class="radio-inline">
	      <input type="radio" name="Gender" value = "Transgender" <%=checkedOther%>>Transgender
	    </label>
    </div>
    </div>
    <button type="btnsubmit" class="btn btn-primary">Edit</button>
  </form>
</div>

</body>
</html>