<%-- 
    Document   : user_signup
    Created on : 10 Aug 2022, 09:37:34
    Author     : katostevenmubiru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
        <link rel="stylesheet" type="text/css" href="../css/user_signup.css">
<link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
    </head>
    <body>
        <div class="main">  	
		<input type="checkbox" id="chk" aria-hidden="true">

			<div class="signup">
                            <form action="connect1.jsp">
					<label for="chk" aria-hidden="true">Sign up</label>
					
					<input type="email" name="Email" placeholder="Email" required="">
					<input type="password" name="Password" placeholder="Password" required="">
                                        <input type="text" name="Gender" placeholder="Gender: Male/Female" required="">
                                        <input type="text" name="Location" placeholder="Location" required="">
                                        
                            
					<button>Sign up</button>
				</form>
			</div>
    </body>
</html>
