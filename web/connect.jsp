<%-- 
    Document   : connect.jsp
    Created on : 7 Aug 2022, 07:07:56
    Author     : katostevenmubiru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<%
  String ProductName = request.getParameter("ProductName");
  String Quantity = request.getParameter("Quantity");
  String Price   = request.getParameter("Price");
    String Category  = request.getParameter("Category");
  
try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mufasa","root","kato2000");
    PreparedStatement ps = conn.prepareStatement("insert into PRODUCT(ProductName, Quantity, Price, Category) VALUES(?,?,?,?)");
      
    ps.setString(1,ProductName);
    ps.setString(2,Quantity);
    ps.setString(3,Price);
    ps.setString(4,Category);
    
    int x = ps.executeUpdate();
    if(x>0){
    out.println("Product added succesfully");
    }
    else{
    out.println("Failed");
    }
    }
    catch(Exception e){
    
       out.println(e);
    }

%>