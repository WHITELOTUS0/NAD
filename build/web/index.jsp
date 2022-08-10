<%-- 
    Document   : home
    Created on : 5 Aug 2022, 12:42:42
    Author     : katostevenmubiru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>home</title>
       
        <link rel="stylesheet" type="text/css" href="./css/style.css">
        <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
        
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
           
            <style>
                #button1{
	width: 20%;
	height: 40px;
	margin: 10px auto;
	justify-content: center;
	display: block;
	color: #fff;
	background: #ed2553;
	font-size: 1em;
	font-weight: bold;
	margin-top: 20px;
	outline: none;
	border: none;
	border-radius: 5px;
	transition: .2s ease-in;
	cursor: pointer;
}
  
            </style>
    </head>
    <body>
        <div id="header1">
        <jsp:include page="./views/_header.jsp"></jsp:include>
        
        </div>
        <div id="menu1">
     <jsp:include page="./views/_menu.jsp"></jsp:include>
     
     
       </div>
   
      
      
          <div id="copyright">
      <jsp:include page="./views/_footer.jsp"></jsp:include>
      </div><!-- comment -->
     
    </body>
    
</html>
