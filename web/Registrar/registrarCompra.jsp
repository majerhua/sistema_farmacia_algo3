<%-- 
    Document   : registrarCompra
    Created on : 06-jul-2017, 0:42:23
    Author     : javier
--%>

<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@include file="../Conexion/conexion.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    Statement st = cn.createStatement();
    String proveedor = request.getParameter("proveedor");
    String fecha = request.getParameter("fecha");
    
    String q="insert into compra(cod_proveedor,fecha) values('"+proveedor+"','"+fecha+"')";
try {
    
st.executeUpdate(q);
response.sendRedirect("../Vistas/vistaCompra.jsp");

} catch(SQLException e) {out.println(e);};

%>