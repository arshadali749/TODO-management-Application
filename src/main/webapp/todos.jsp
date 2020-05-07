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
	overflow: scroll;
	height: 500px;
}

.modal-header {
	background-color: maroon;
}

thead {
	background-color: maroon;
}

#userprofilepic {
	width: 30px;
	height: 30px;
	border-radius: 50px;
}

#navebardiv {
	background-color: gray;
	margin-top: 2px;
	margin-bottom: 5px;
}

#todostitlediv {
	background-color: gray;
	
}

h2 {
	color: white;
}
h1{
color:white;
}
</style>
<body class="container">

	<div id="navebardiv">
		<nav class="text-right">

			<a href="#"><img id="userprofilepic" data-toggle="modal"
				data-target="#updateuser" alt="user image"
				src="./images/background.jfif"></a>
		</nav>

	</div>
	<div>
		<button type="button" class="btn btn-danger btn-sm"
			data-toggle="modal" data-target="#addnewtodo">CLICK TO ADD
			TODO</button>

	</div>


	<div id="todostabledive">
		<div id="todostitlediv" class="text-center">
			<h1>LIST OF TODOS</h1>
		</div>
		<table class="table table-dark table-bordered table-sm ">

			<thead>
				<tr>
					<th>ID</th>
					<th>TITLE</th>
					<th>DATE</th>
					<th>DESCRIPTION</th>
					<th>EDIT</th>
					<th>DELETE</th>
				</tr>
			</thead>
			<c:forEach items="${todos}" var="todo">

				<tr>
					<td>${todo.id}</td>
					<td>${todo.title}</td>
					<td>${todo.date}</td>
					<td>${todo.description}</td>
					<td><a class="btn btn-success btn-sm"
						href="edit_todo/${todo.id}">EDIT</a></td>
					<td><a class="btn btn-danger btn-sm"
						href="delete_todo/${todo.id}">DELETE</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div class="modal fade" id="addnewtodo" data-backdrop="static"
		tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header  theme text-center">
					<h2 class="modal-title ">ADD NEW TODO MODAL</h2>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>


				<div class="modal-body">

					<form action="/insert_todo">


						<div class="form-group">
							<label for="description">TITLE</label> <input
								class="form-control" type="text" name="title"
								placeholder="enter title here">
						</div>

						<div class="form-group">
							<label for="description">DESCRIPTION</label> <input
								class="form-control" type="text" name="description"
								placeholder="enter description here">
						</div>



						<div class="form-group">
							<label for="target_date">TARGET Date</label> <input
								class="form-control" type="date" name="date"
								placeholder="choose the date  here">
						</div>
						<div class="form-group">
							<input class="btn btn-success" type="submit">
						</div>


					</form>

				</div>

			</div>
		</div>
	</div>
	<!-- add customer model ends here  -->



	<div class="modal fade" id="updateuser" data-backdrop="static"
		tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header  theme text-center">
					<h2 class="modal-title ">UPDATE USER MODAL</h2>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>


				<div class="modal-body">

					<form action="/update_user">

						<div class="form-group">
							<label for="id">ID</label> <input value="${currentuser.id}"
								class="form-control" type="text" name="id"
								placeholder="enter username here">
						</div>
						<div class="form-group">
							<label for="fname">USERNAME</label> <input
								value="${currentuser.username}" class="form-control" type="text"
								name="username" placeholder="enter username here">
						</div>


						<div class="form-group">
							<label for="fname">PASSWORD</label> <input
								value="${currentuser.password}" class="form-control" type="text"
								name="password" placeholder="enter password here">
						</div>

						<div class="form-group">
							<label for="fname">CHOOSE PROFILE PICTURE</label> <input
								class="form-control" type="file" name="pic">
						</div>

						<div class="form-group">
							<div>
								<input class="btn btn-success" type="submit"> <a
									class="btn btn-success text-right" href="/logout">LOGOUT</a>
							</div>

						</div>


					</form>
				</div>

			</div>
		</div>
	</div>
	<!-- update customer model ends here  -->









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