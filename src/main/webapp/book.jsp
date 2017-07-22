<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <link rel="stylesheet" href="CSS/styleMain.css">
  
<title>Add New Book</title>
</head>
<body>

	<div class="mainContainer">
	<form action="BookController" method="post">
		<fieldset class="table1 border1 ">
		 <legend> Book Management: </legend>
			<p>
				<label for="title">Title</label> <input type="text"
					name="title" value="<c:out value="${aBook.title}" />"
					placeholder="Title" class="form-control"/>
			</p>
			<p>
				<label for="author">Author</label> <input type="text"
					name="author" value="<c:out value="${aBook.author}" />"
					placeholder="Author" class="form-control"/>
			</p>
			<p>
				<label for="year">Year</label> <input type="text"
					name="year" value="<c:out value="${aBook.year}" />"
					placeholder="yyyy-mm-dd" class="form-control"/>
			</p>
			<p>
				<label for="type">Type</label> <input type="text"
					name="type" value="<c:out value="${aBook.type}" />"
					placeholder="Type" class="form-control"/>
			</p>
			<p>
				<label for="image">Image</label> <input type="text"
					name="image" value="<c:out value="${aBook.image}" />"
					placeholder="Image" class="form-control"/>
			</p>
			<p>
				<label for="price">Price</label> <input type="text"
					name="price" value="<c:out value="${aBook.price}" />"
					placeholder="Price" class="form-control"/>
			</p>
			<input type="hidden" name="categoryId" value="${aBook.category_id}" />
			<input type="hidden" name="action" value="${action}"/>
			<input type="hidden" name="bookId" value="${aBook.id}"/>
			<div>
				<input type="submit" value="Submit"  class="btn btn-success"/>
			</div>
		</fieldset>
	</form>
	<a href="index.jsp">Go To Main Page</a>
	</div>

</body>
</html>