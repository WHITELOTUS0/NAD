<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "mufasa";
String userid = "root";
String password = "kato2000";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="./css/salestracking.css">
        <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
    </head>
<body>
    <div id="salesView">

<h1>Sales and Likes</h1>
<div id="table">
<table >
<tr>
<th>Product</th>
<th>Sales</th>
<th>Likes</th>


</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from SALES";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("Product") %></td>
<td><%=resultSet.getString("Sales") %></td>
<td><%=resultSet.getString("Likes") %></td>


</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table> 
</div><br><br>
 <button class="print-btn">Print</button>
        
        
        
        
        
        
        
        <script>
            
            printBtn = document.querySelector(".print-btn");
            printBtn.addEventListener("click",ev=>{
                window.print();
            });
            
         </script>
     
    </div>


</body>
</html>