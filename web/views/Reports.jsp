<%-- 
    Document   : Reports
    Created on : 10 Aug 2022, 13:21:05
    Author     : katostevenmubiru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <button class="print-btn">Print</button>
        
        
        
        
        
        
        
        <script>
            
            printBtn = document.querySelector(".print-btn");
            printBtn.addEventListener("click",ev=>{
                window.print();
            });
            
         </script>
            
        
    </body>
</html>
