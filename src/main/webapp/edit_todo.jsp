<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
</head>
<style>
#todostabledive {
	background-color: black;
	margin-top: 5px;
	overflow: auto;
	height: 700px;
}

#edittodoformdiv {
margin-top:10px;
	border: solid maroon 5px;
	border-radius: 5px;
}

thead {
	background-color: maroon;
}



#edittodoformtitle{
background-color: maroon;
}
h1{
color: white;
}
</style>
<body>
	
	<div id="edittodoformdiv" class="container">
		<div id="edittodoformtitle"class="text-center">
			<h1>EDIT TO DO WINDOW</h1>
		</div>
		<form action="/update_todo">

			<div class="form-group">
				<input class="form-control" type="hidden"
					name="id" value="${todo.id}">
			</div>

			<div class="form-group">
				<label for="description">TITLE</label> <input class="form-control"
					type="text" name="title" value="${todo.title}"
					placeholder="enter title here">
			</div>

			<div class="form-group">
				<label for="description">DESCRIPTION</label> <input
					class="form-control" type="text" value="${todo.description}"
					name="description" placeholder="enter description here">
			</div>



			<div class="form-group">
				<label for="target_date">TARGET Date</label> <input
					class="form-control" type="date" value="${todo.date}" name="date"
					placeholder="choose the date  here">
			</div>
			<div class="form-group">
				<input class="btn btn-success" type="submit" value="UPDATE">
			</div>


		</form>

	</div>






	<!-- java scripts  -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"
		integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>