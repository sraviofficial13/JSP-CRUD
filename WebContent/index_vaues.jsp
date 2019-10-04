<%@page import="org.eclipse.jdt.internal.compiler.ast.WhileStatement"%>
<%@page import="java.util.Iterator"%>
<%@page import="test.User_Bean"%>
<%@page import="java.util.List"%>
<%@page import="CRUD.Read_Values"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Emplo</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
 
     <script type="text/javascript">
    $(document).ready(function() {
    	
    	var counter = 0;
    	$('#btnsubmit').click(function(e) {
    	     e.preventDefault();
    	     var s1_no = $("#s1_no").val();
    	     var user_name = $("#name").val();
    	     var email = $("#email").val();
    	     var mobile = $("#mbn").val();
    	     var Address = $("#Address").val();
    	     var Gender = '';
    	     counter++;
    	     $('input[name="Gender"]:checked').each(function() {
    	    	 Gender = this.value;
    	    	});
    	
    	     $.ajax({
    	         url: "controller/insert_controller.jsp",
    	         type: "post",
    	         data: {
    	        	 's1_no':s1_no,
    	        	 'user_name':user_name,
    	        	 'email':email,
    	        	 'mobile':mobile,
    	        	 'Address':Address,
    	        	 'Gender':Gender
    	         },
    	         cache: false,
    	         success: function(data) {
    	        	 console.log("suceesss");
    	        	 $("#msg").html('<div class="alert alert-success">'+
 	        			    '<strong>Success!</strong> Added employee.'+
 	        			    '</div>');
 	        	 		$('#msg').fadeIn(100).show();
    	        	
    	     	     $.ajax({
    	    	         url: "controller/read2.jsp",
    	    	         type: "get",
    	    	         cache: false,
    	    	         success: function(data) {
    	    	        	 console.log(counter);
    	    	        	 $("#responseData").append(data);
    	    	        	 $(".xyz").remove();
    	    	        	 if(counter > 1){
    	    	        		 $(".qwe").first().remove();
    	    	        		 $(".test").first().remove();
    	    	        	 }
    	    	         }
    	    	         });
    
    	         }
    	         });
    	})
    	
    	$(".delete").click(function(e){
    	    e.preventDefault();
    		console.log("hi ravijscjj")
    		var attrval = $(this).attr('href');
    	     $.ajax({
    	         url: attrval,
    	         type: "delete",
    	         cache: false,
    	         success: function(data) {
    	    	     $.ajax({
    	    	         url: "controller/read2.jsp",
    	    	         type: "get",
    	    	         cache: false,
    	    	         success: function(data) {
    	    	        	 $("#responseData").append(data);
    	    	        	 $(".xyz").remove();
    	    	         }
    	    	         });
    
    	         }
    	         });
    		console.log(attrval)
    	})
    	
    	
    	
    	
    	
    	 });
   </script> 
  
</head>
<body>


<hr>
<div class="container">

  <h2>ADD Employee</h2>
  <form action="controller/insert_controller.jsp" method="post"  onsubmit="event.preventDefault()">
  <div id="msg"></div>
    <div class="form-group">
      <label for="name">Serial Number:</label>
            
      
      <input type="text" class="form-control" id="s1_no" placeholder="Enter Name" name="s1_no" required>
    </div>
    <div class="form-group">
      <label for="name">Name:</label>
      <input type="text" class="form-control" id="name" placeholder="Enter Name" name="user_name" required>
    </div>
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" required>
    </div>
    <div class="form-group">
      <label for="mbn">Mobile Number:</label>
      <input type="text" class="form-control" id="mbn" placeholder="Enter Mobile number" name="mobile" required>
    </div>
    <div class="form-group">
      <label for="Address">Address:</label>
      <input type="text" class="form-control" id="Address" placeholder="Enter Address" name="Address" required>
    </div>
    
 
 
     
     
    
    
    <div class="form-group">
        <label for="gen">Gender:</label>
	    <label class="radio-inline">
	      <input type="radio" name="Gender" value="male" checked>Male
	    </label>
	    <label class="radio-inline">
	      <input type="radio" name="Gender" value="female">Female
	    </label>
	    <label class="radio-inline">
	      <input type="radio" name="Gender" value = "Transgender">Transgender
	    </label>
    </div>
    
   <button id="btnsubmit" class="btn btn-primary">Submit</button>
  
  <br>
    
    

    
  </form>
</div>

<hr>
<div>



<%

Read_Values obj_Read_Values=new Read_Values();
List<User_Bean> list=obj_Read_Values.get_values();
Iterator<User_Bean> it_list=list.iterator();
%>

<h1 style="text-align: center;" class = "xyz">Employee Lists</h1>

<div id="responseData">

</div>


<table class="table table-bordered xyz">
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