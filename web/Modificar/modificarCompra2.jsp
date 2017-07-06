<%-- 
    Document   : modificarCompra2
    Created on : 06-jul-2017, 0:42:12
    Author     : javier
--%>

<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@include file="../Conexion/conexion.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%
    int cod_compra = Integer.parseInt(request.getParameter("cod_compra"));
    int cod_proveedor = Integer.parseInt(request.getParameter("proveedor"));
    String fecha = request.getParameter("fecha");
    
    Statement st=cn.createStatement();
    
    st.execute("update compra set fecha='"+fecha+"' , cod_proveedor='"+cod_proveedor+"'  where cod_compra="+cod_compra);
    response.sendRedirect("../Vistas/vistaCompra.jsp");
%>