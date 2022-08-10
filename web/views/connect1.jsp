<%-- 
    Document   : login1
    Created on : 9 Aug 2022, 05:29:11
    Author     : katostevenmubiru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<%
  String Email = request.getParameter("Email");
  String Password = request.getParameter("Password");
  String Gender  = request.getParameter("Gender");
  String Location = request.getParameter("Location");
  
try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mufasa","root","kato2000");
    PreparedStatement ps = conn.prepareStatement("insert into USER(Email,Password, Gender , Location) VALUES(?,?,?,?)");
      
    ps.setString(1,Email);
    ps.setString(2,Password);
    ps.setString(3,Gender);
    ps.setString(4,Location);
    
    int x = ps.executeUpdate();
    if(x>0){
    out.println("Account created, try and login");
    }
    else{
    out.println("Failed");
    }
    }
    catch(Exception e){
    
       out.println(e);
    }

%>