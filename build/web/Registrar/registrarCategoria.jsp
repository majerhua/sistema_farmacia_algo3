<%-- 
    Document   : registrarCategoria
    Created on : 05-jul-2017, 18:33:45
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
    String q="insert into categoria(nombre) values('"+nombre+"')";
try {
    
st.executeUpdate(q);
response.sendRedirect("../Vistas/vistaCategoria.jsp");

} catch(SQLException e) {out.println(e);};

%>
