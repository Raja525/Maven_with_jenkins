<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="/checkingdemo/resources/css/style.css" rel="stylesheet">
	<title>Item Page</title>
	<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1" >
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

<style>
#titlesection
	{
		box-shadow:0px 2px 10px;
		margin-bottom:50px;
	}
</style>
</head>

<body>
	<!-----------------------------------Food List(selected)------------------------------------>
<div style="margin:50px 100px 10px 100px;padding:20px;box-shadow:0px 2px 10px;border-radius:10px;">

			<div id="item" class="row">
					<div class="col-sm-3">
						<img alt="" src="">
					</div>
					<div class="content col-sm-8">
						<div class="style">Dish: </div>
						<h5>Price: Rs. </h5>
						<h5>Food Type: </h5>
						<br>
						<div style="padding:10px; background-color:#f54748; border-radius:5px; width:100px;">Order Now</div>
					</div>	
					<div class="col-sm-1">
						<form action="items" method="post">
							<button type="submit" name="btnremove" class="btn btn-danger">Remove</button>
						</form>
					</div>	
			</div>
</div>

<!-----------------------------------Price tag------------------------------------>
	<div id="bill" class="row">
		<div class="col-md-6"></div>
		<div class="col-md-6">
			<div style="padding:40px 100px 0px 0px;float:right;font-size:26px;font-family:'Montserrat',Sans-serif;font-weight:600px;">Total Price : Rs. </div>
		</div>
	</div>
	<!-----------------------------------billing button------------------------------------>
	<div style="padding:50px 500px;">
		<form action="purchase" method="post">
		<a href="#" Style="width:100%;font-family: 'Montserrat',sans-serif;" type="submit" class="btn btn-dark">Proceed</a>
		</form>
	</div>
</body>
</html>