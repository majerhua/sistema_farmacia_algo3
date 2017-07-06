<%-- 
    Document   : modificarCategoria2
    Created on : 05-jul-2017, 22:10:34
    Author     : javier
--%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@include file="../Conexion/conexion.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%
    int cod_categoria = Integer.parseInt(request.getParameter("cod_categoria"));
    String nombre = request.getParameter("nombre");
    
    Statement st=cn.createStatement();
    
    st.execute("update categoria set nombre='"+nombre+"' where cod_categoria="+cod_categoria);
    response.sendRedirect("../Vistas/vistaCategoria.jsp");
%>