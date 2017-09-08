<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script> -->
<!-- <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>-->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Busqueda TMDB</title>
</head>
<body>
	<fieldset id="Google_Drive">
		<legend>
			Google Drive posting
			<c:out value="${param.query}" />
		</legend>
		<%
			String controller = "GoogleDriveFileNew";
		%>

		<div class="container">

			<form action="<%=controller%>" method="post">

				File name: <input type="text" name="title"><br>
				Content:
				<textarea name="content">${content}</textarea>
				<br>
				<div class="bottom_links">
					<button type="submit" class="button">Submit</button>
					<button type="button"
						onClick="javascript:window.location.href='index.jsp'"
						class="button">Cancel</button>
				</div>
			</form>
		</div>


	</fieldset>
</body>
</html>