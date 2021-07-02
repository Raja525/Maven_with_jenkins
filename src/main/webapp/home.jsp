<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
 
<!DOCTYPE html>
<html>
<head>
	<link href="/checkingdemo/resources/css/style.css" rel="stylesheet">
	<title>Home</title>
	<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1" >
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<style>
#imagecontainer
{
	width:100%;
	height:600px;
	background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url('/checkingdemo/resources/img/home1.jpg');
		background-size:cover;
		background-position:center;
		background-repeat:no-repeat;
		font-size:120px;
		font-family:'Montserrat',Sans-serif;
		font-weight:900px;
		color:white;
		padding:50px 60px;
		line-height:140px;
}

</style>
</head>

<body>
<div id="titlesection">
    <div class="row">
           <div id="logo" class="col-sm-2">Kitchan Story</div>
        <div class="col-sm-10">
        <div  class="nav-bar">
            <a href="#"><button class="btn btn-dark">Home</button></a>
            <a href="#"><button class="btn btn-dark">My Orders</button></a>
             <a href="admin.jsp"><button class="btn btn-dark">admin</button></a>
        </div> 
        </div>
    </div>
</div>
<hr id="line">
	  
		<hr id="line">
        <!-- image section -->
        <div id="imagecontainer">Eat <br>What <br>You <span style="color:#f54748">Love!</span>
         </div>
                <!-- Search box -->
                <div id="searchbox">
                <form action="search" method="POST">
                    <div class="input-group" > 
                          <input type="search"  id="form1" class="form-control" name="searchtext" />                 
                          <button type="submit" class="form-control btn btn-dark">Search
                          </button>
                    </div>
                 </form>
                </div>
    
<!--------------------------------------- Page body section -------------------------------------------->

<div class="row">
<div class="col-3" style="padding:20px 40px">
	<h2 style="text-align:center">Filter</h2>
	<h5>Cousines</h5>
	<div>
		<input type="checkbox" name="Indian" style="margin:0px 20px">Indian
	</div>
</div>
<div class="col-9">
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/phase4db","root","rootraja");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from foodstable");
	while(rs.next())
	{
%>
		<div>
				<div id="item" class="row">
					<div class="col-md-3">
						<img alt="" src="/checkingdemo/resources/img/<%=rs.getString("Imgpath") %>" />
					</div>
					<div class="content col-md-8">
						<div class="style">Dish: <%=rs.getString("Itemname") %></div>
						<h5>Price: Rs.<%=rs.getString("Price") %></h5>
						<h5>Food Type: <%=rs.getString("Type") %></h5>
						<br>
						<div id="order" style="padding:10px; background-color:#f54748; border-radius:5px; width:100px;">Order Now</div>
					</div>	
					<div class="col-md-1">
					
						<button id="btn<%=rs.getString("Id")%>" class="btn btn-primary" onclick="additems(<%=rs.getString("Id")%>)" name="itemid" value="<%=rs.getString("Id")%>" >Add</button>
				
					</div>
				</div>
		  		<hr>
		</div>
	
		<%		
	}
%>
</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
	<script>
function additems(id)
{
	//arr.push(id);
	//alert("Clicked");
	document.getElementById("btn"+id).setAttribute("style","background-color:#f54748; color:black; border:none");
	document.getElementById("btn"+id).innerHTML="Added";
	//for(var i=0;i<arr.length;i++)
	//	{
		//console.log(arr);
		//}
}
</script>
</body>
</html>