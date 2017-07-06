<%-- 
    Document   : eliminarProveedor
    Created on : 06-jul-2017, 0:00:41
    Author     : javier
--%>

<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../Conexion/conexion.jsp" %>



<%
    int  cod_proveedor=Integer.parseInt(request.getParameter("proveedor"));
    
          
        Statement sta=null;
        ResultSet rs=null;
        try{
       
            sta=cn.createStatement();

            sta.executeUpdate("delete from proveedor where cod_proveedor='"+cod_proveedor+"'");
            //request.getRequestDispatcher("../Vistas/vistaCategoria.jsp").forward(request, response);
            response.sendRedirect("../Vistas/vistaProveedor.jsp");
               
        }catch(Exception e){out.print(e+"");}
  
    

 %>
        