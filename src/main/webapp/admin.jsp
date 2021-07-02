<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
</head>
<body>
	<div>
		<div id="titlesection">
    	<div class="row">
           <div id="logo" class="col-sm-2">Kitchan Story</div>
        	<div class="col-sm-10">
        		<div  class="nav-bar">
            		<a href="#"><button class="btn btn-dark">Home</button></a>
            		<a href="#"><button class="btn btn-dark">My Orders</button></a>
        		</div> 
   			</div>
    	</div>
		</div>
<hr id="line">
	<div>
		<div>
			<form action="admin" method="post">
			<label>Cousines</label>
			<input type="text" name="cousines">
			<button type="submit" class="btn btn-primary">Add cousines</button>
			</form>
		</div>	
		<div>
			<form action="admin" method="post">
				<label>ItemName</label>
				<input type="text" name="itemname">
				<label>Price</label>
				<input type="text" name="price">
				<label>Type</label>
				<select>
				<%
			HttpSession ses=request.getSession();
		ArrayList<String> result=(ArrayList<String>)ses.getAttribute("list");
		System.out.println(result);
		if(result!=null){
		for(int i=0;i<result.size();i++){ %>
					<option><%=result.get(i) %></option>
			<%}
		}else{%>
			<option>Add cousines</option>
		<%}
			%>
				</select>
				<label>Imagepath</label>
				<input type="text" name="imgpath">
				<button class="btn btn-primary" type="submit">submit</button>
			</form>
		</div>
</div>
</body>
</html>