/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package servlet;

import conn.MySQLConnUtils;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author katostevenmubiru
 */
public class AdminLogin extends HttpServlet {
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException{
         String dbPasswd = null;
        String dbEmail = null;
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            String loginEmail = request.getParameter("email");
            
            String loginPasswd = request.getParameter("password");
            MySQLConnUtils mysqlConUtil = new MySQLConnUtils();
            Connection conn;
            
            
            conn = mysqlConUtil.getMySQLConnection();
            
            String query = "select * from ADMIN where email = ? and password = ?";
            PreparedStatement pst = conn.prepareStatement(query);
            pst.setString(1, loginEmail);
            pst.setString(2, loginPasswd);    
            ResultSet rs = pst.executeQuery();
          
            while (rs.next()) {
                dbEmail = rs.getString("email");
                dbPasswd = rs.getString("password");
            }
           out.print(dbEmail + "\t" + dbPasswd );
           
            if (loginEmail.equals(dbEmail) && loginPasswd.equals(dbPasswd)) {
                response.sendRedirect("adminView.jsp");
            } else {
                response.sendRedirect("adminlogin.jsp");
            }
        } catch (SQLException ex) {
            Logger.getLogger(AdminLogin.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AdminLogin.class.getName()).log(Level.SEVERE, null, ex);
        }
            
         
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
