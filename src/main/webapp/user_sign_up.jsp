<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<body>

	<div class="modal-body">
		<h3>USER SIGN UP FORM</h3>
		<form action="/insert_user">
			<div class="form-group">
				<label for="fname">USERNAME</label> <input class="form-control"
					type="text" name="username" placeholder="enter username here">
			</div>


			<div class="form-group">
				<label for="fname">PASSWORD</label> <input class="form-control"
					type="text" name="password" placeholder="enter password here">
			</div>
			
			<div class="form-group">
				<label for="fname">CHOOSE PRoOFILE PICTURE</label> <input class="form-control"
					type="file" name="pic">
			</div>
			
			<div class="form-group">
				<input class="btn btn-success" type="submit">
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