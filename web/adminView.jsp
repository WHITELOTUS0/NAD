<%-- 
    Document   : adminView
    Created on : 6 Aug 2022, 12:07:30
    Author     : katostevenmubiru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="login.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
        <link rel="stylesheet" type="text/css" href="css/adminView.css">
        <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
        <script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
  document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
  document.body.style.backgroundColor = "white";
}
</script>


<style>
    
    
    
.dashboard{
    margin-top: 1%;
    margin-right: 1%;
    padding: 10px;

    border-radius: 5px;
    width:100%;
    display:flex;
    min-height: 200px;
    flex-direction: row;
    justify-content: space-around;
    align-items: center;
    
}


.primary{
    color: lightblue;
}

.warning{
    color: orange;
}

.danger{
    color: red;
}


.dashboard-item{
    display:flex;
    flex-direction: column;
    align-items: center;
    border-radius: 5px;
    width:200px;
    height: 200px;
    box-shadow: 1px 0px  9px gray;
    
    
}


@media (max-width:650px){
    .dashboard{
        flex-direction: column;
        
    }
    
    .dashboard-item{
        
        width: 400px;
        margin-top: 12px;
        margin-bottom: 12px;
    }
}
    
</style>
    </head>
    <body>
        <div id="adminView" >
            <div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="./addProduct.jsp">Products</a>
  <a href="./salestracking.jsp">Sales and Likes</a>
  <a href="./customers.jsp">Customers</a>
  <a href="#">Human Resource</a>
  <a href="./piechart.jsp">Reports</a>
  <a href="./adminlogin.jsp">Logout</a>
  
</div>
            
            

<div id="main7">
    <h1>Hello, Manager</h1>
  
  <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Menu</span>
  <h3>Dashboard</h3>
  
  <div class="dashboard">
      
      <div class="dashboard-item">
          
          <div class="dash-item">
              <h1>45</h1>
          </div>
          <div>Orders</div>
      </div>
      
      <div class="dashboard-item">
          
          <div class="dash-item">
              <h1 class="primary">4</h1>
          </div>
          <div>Products</div>
      </div>
      
      
      <div class="dashboard-item">
          
          <div class="dash-item">
              <h1 class="warning">45</h1>
          </div>
          <div>Likes</div>
      </div>
      
      
      <div class="dashboard-item">
          
          <div class="dash-item">
              <h1 class="danger">35</h1>
          </div>
          <div>Sales</div>
      </div>
      
      
      
      
  </div>
  
</div>
            
            
            
            


            
  
        </div>
        






        
    </body>
</html>
