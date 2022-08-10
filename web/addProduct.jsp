<%-- 
    Document   : addProduct
    Created on : 6 Aug 2022, 13:08:02
    Author     : katostevenmubiru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Products</title>
        <link rel="stylesheet" type="text/css" href="./css/admin.css">
        <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
    </head>
    <body>
        <div class="main">
            <input type="checkbox" id="chk" aria-hidden="true">
        <div class="login">
            <div class="signup">
                <form method="post" action="connect.jsp">
					<label for="chk" aria-hidden="true">AddProduct</label>
					
					<input type="text" name="ProductName" placeholder="Product Name" required="">
					<input type="number" name="Quantity" placeholder="Quantity" required="">
                                        <input type="number" name="Price" placeholder="Price" required="">
                                        <input type="text" name="Category" placeholder="Category" required="">
                                        
					<button>Submit</button>
				</form>
			
        </div>
        
    </body>
</html>
