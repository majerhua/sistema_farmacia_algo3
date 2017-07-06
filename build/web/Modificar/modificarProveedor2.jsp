<%-- 
    Document   : modificarProveedor2
    Created on : 06-jul-2017, 0:01:10
    Author     : javier
--%>

<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@include file="../Conexion/conexion.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%
    int cod_proveedor = Integer.parseInt(request.getParameter("cod_proveedor"));
    String nombre = request.getParameter("nombre");
    String direccion = request.getParameter("direccion");
    String telefono = request.getParameter("telefono");
    
    Statement st=cn.createStatement();
    
    st.execute("update proveedor set nombre='"+nombre+"' , direccion='"+direccion+"' , telefono='"+telefono+"' where cod_proveedor="+cod_proveedor);
    response.sendRedirect("../Vistas/vistaProveedor.jsp");
%>