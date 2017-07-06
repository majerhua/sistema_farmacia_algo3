<%-- 
    Document   : index
    Created on : 05-jul-2017, 13:18:12
    Author     : javier
--%>

<%-- 
    Document   : Consulta
    Created on : 17-may-2017, 20:52:55
    Author     : xvi_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tablas </title>
    </head>
    <body bgcolor="White" text="black">
        <h1 align="center">Tablas</h1>
        <hr width="75%" size="4" color="red">
    <center>
        <form method="post">
            <br><br>    
</form>
        
     
 <%//Conexion
     
     try{
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://127.0.0.1/algo3","root","123");
Statement st=cn.createStatement();
%>

<%
     }
catch(SQLException ex){ %>
<%="Se produjo una excepción durante la conexión:"+ex%>
<%} catch(Exception ex){ %>
<%="Se produjo una excepción:"+ex%>
<%}%>
<p><a href="Llamado.jsp">Volver al Menu Principal</a></p>
</center>
</body>
</html>
