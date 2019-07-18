<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Page</title>
</head>
<body>
<div class="contactpage">
<form action="NewMail" method="POST">
<div class="question">
<label for="mail">Enter ur Mail ID:</label>
<input type="email" name="mail" id="mail" required>
</div>
<div class="question">
<label for="sub">Enter ur Subject</label>
<input type="text" name="sub" id="sub" required>
</div>
<div class="question">
<label for="msg">Enter Message:</label>
<input type="text" name="msg" id="msg" required>
</div>
<input type="submit" value="submit">
</form>
</div>
</body>
</html>