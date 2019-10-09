
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KeepNote</title>
</head>
<body>
	<!-- Create a form which will have text boxes for Note ID, title, content and status along with a Send 
		 button. Handle errors like empty fields -->
	<form action="addNote">
		<div class="form-group">
			<label for="noteId">Enter NoteId</label>
			<input type="number" name="noteId" id="noteId">
		</div>
		<div class="form-group">
			<label for="title">Enter Title</label>
			<input type="text" name="title" id="title">
		</div>
		<div class="form-group">
			<label for="content">Enter Content</label>
			<input type="text" name="content" id="content">
		</div>
		<div class="form-group">
			<label for="status">Enter Content</label>
			<input type="text" name="status" id="status">
		</div>
		<input type="submit" value="Create a note">
	</form>

	<!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->
</body>
</html>