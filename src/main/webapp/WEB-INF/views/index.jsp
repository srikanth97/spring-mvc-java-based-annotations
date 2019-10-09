<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
	<form action="/KeepNote-Step1-Boilerplate/saveNote" method="post">
		<div class="form-group">
			<label for="noteId">Enter NoteId</label>
			<input type="number" name="noteId" id="noteId">
		</div>
		<div class="form-group">
			<label for="title">Enter Title</label>
			<input type="text" name="noteTitle" id="title">
		</div>
		<div class="form-group">
			<label for="content">Enter Content</label>
			<input type="text" name="noteContent" id="content">
		</div>
		<div class="form-group">
			<label for="status">Enter Status</label>
			<input type="text" name="noteStatus" id="status">
		</div>
		<input type="submit" value="Create a note">
	</form>

	<!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->
	<table cellpadding="30">
		<tr>
			<th>Note Id</th>
			<th>Note Title</th>
			<th>Note Content</th>
			<th>Note Status</th>
			<th>Note Created At</th>
			<th>Note Action</th>
		</tr>
		<c:forEach items="${allnotes}" var="note">
			<tr>

					<th><c:out value="${note.noteId}" /></th>
					<th><c:out value="${note.noteTitle}"/></th>
					<th><c:out value="${note.noteContent}"/></th>
					<th><c:out value="${note.noteStatus}"/></th>
					<th><c:out value="${note.createdAt}"/></th>
					<th><form action="/KeepNote-Step1-Boilerplate/deleteNote?noteId=${note.noteId}" method="post"><input type="Submit" value="Delete"></form></th>
			</tr>
		</c:forEach>
	</table>
</body>
</html>