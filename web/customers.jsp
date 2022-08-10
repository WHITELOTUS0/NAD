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

<h1>Customers</h1>
<div id="table">
<table >
<tr>
<th>Email</th>
<th>Password</th>
<th>Gender</th>
<th>Location</th>
<th>Date when account was created</th>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from USER";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("Email") %></td>
<td><%=resultSet.getString("Password") %></td>
<td><%=resultSet.getString("Gender") %></td>
<td><%=resultSet.getString("Location") %></td>
<td><%=resultSet.getString("Date") %></td>


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