<%-- 
    Document   : registrarProducto
    Created on : 06-jul-2017, 4:03:00
    Author     : javier
--%>

<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@include file="../Conexion/conexion.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    Statement st = cn.createStatement();
    int categoria = Integer.parseInt(request.getParameter("categoria"));
    String nombre = request.getParameter("nombre");
    int stock = Integer.parseInt(request.getParameter("stock"));
    
    String q="insert into producto(cod_categoria,nombre,stock) values('"+categoria+"','"+nombre+"','"+stock+"')";
try {
    
st.executeUpdate(q);
response.sendRedirect("../Vistas/vistaProducto.jsp");

} catch(SQLException e) {out.println(e);};

%>
