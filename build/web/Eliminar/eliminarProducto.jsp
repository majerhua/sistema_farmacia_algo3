<%-- 
    Document   : eliminarProducto
    Created on : 06-jul-2017, 11:50:20
    Author     : javier
--%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../Conexion/conexion.jsp" %>



<%
    int  cod_producto=Integer.parseInt(request.getParameter("cod_producto"));
    
          
        Statement sta=null;
        ResultSet rs=null;
        try{
       
            sta=cn.createStatement();

            sta.executeUpdate("delete from producto where cod_producto='"+cod_producto+"'");
            //request.getRequestDispatcher("../Vistas/vistaCategoria.jsp").forward(request, response);
            response.sendRedirect("../Vistas/vistaProducto.jsp");
               
        }catch(Exception e){out.print(e+"");}
  
    

 %>
