<%-- 
    Document   : conexion
    Created on : 05-jul-2017, 18:13:22
    Author     : javier
--%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
     Connection cn=null;
     
     try{
         
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://127.0.0.1/algo3","root","123");
            
     }
    catch(SQLException ex){
        
            out.println("Se produjo una excepción durante la conexión:"+ex);
            
       }
     
%>
