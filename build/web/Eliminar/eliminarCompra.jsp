<%-- 
    Document   : eliminarCompra
    Created on : 06-jul-2017, 0:41:51
    Author     : javier
--%>

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
    int  cod_compra=Integer.parseInt(request.getParameter("cod_compra"));
    
          
        Statement sta=null;
        ResultSet rs=null;
        try{
       
            sta=cn.createStatement();

            sta.executeUpdate("delete from compra where cod_compra='"+cod_compra+"'");
            //request.getRequestDispatcher("../Vistas/vistaCategoria.jsp").forward(request, response);
            response.sendRedirect("../Vistas/vistaCompra.jsp");
               
        }catch(Exception e){out.print(e+"");}
  
    

 %>
        
