<%-- 
    Document   : registrarProveedor
    Created on : 06-jul-2017, 0:01:22
    Author     : javier
--%>

<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@include file="../Conexion/conexion.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    Statement st = cn.createStatement();
    String nombre = request.getParameter("nombre");
    String direccion = request.getParameter("direccion");
    String telefono = request.getParameter("telefono");
    String q="insert into proveedor(nombre,direccion,telefono) values('"+nombre+"','"+direccion+"','"+telefono+"')";
try {
    
st.executeUpdate(q);
response.sendRedirect("../Vistas/vistaProveedor.jsp");

} catch(SQLException e) {out.println(e);};

%>
