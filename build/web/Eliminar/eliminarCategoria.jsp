<%-- 
    Document   : eliminarCategoria
    Created on : 05-jul-2017, 18:34:40
    Author     : javier
--%>

<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../Conexion/conexion.jsp" %>



<%
    int  cod_categoria=Integer.parseInt(request.getParameter("cod_categoria"));
    
          
        Statement sta=null;
        ResultSet rs=null;
        try{
       
            sta=cn.createStatement();

            sta.executeUpdate("delete from categoria where cod_categoria='"+cod_categoria+"'");
            //request.getRequestDispatcher("../Vistas/vistaCategoria.jsp").forward(request, response);
            response.sendRedirect("../Vistas/vistaCategoria.jsp");
               
        }catch(Exception e){out.print(e+"");}
  
    

 %>
        
