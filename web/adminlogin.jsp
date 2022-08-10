<%-- 
    Document   : adminlogin
    Created on : 5 Aug 2022, 17:48:29
    Author     : katostevenmubiru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin_login</title>
        <link rel="stylesheet" type="text/css" href="css/admin.css">
<link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
    </head>
    <body>
        <div class="main">
            <input type="checkbox" id="chk" aria-hidden="true">
        <div class="login">
            <div class="signup">
                <form method="post" action="admin-login">
					<label for="chk" aria-hidden="true">Admin</label>
					
					<input type="email" name="email" placeholder="Email" required="">
					<input type="password" name="password" placeholder="Password" required="">
					<button>Login</button>
				</form>
			
        </div>
    </body>
</html>

