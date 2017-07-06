<%-- 
    Document   : modificarProducto2
    Created on : 06-jul-2017, 11:52:57
    Author     : javier
--%>

<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@include file="../Conexion/conexion.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    int cod_producto = Integer.parseInt(request.getParameter("cod_producto"));
    int categoria = Integer.parseInt(request.getParameter("categoria"));
    String nombre = request.getParameter("nombre");
    
    Statement st=cn.createStatement();
    
    st.execute("update producto set nombre='"+nombre+"' , cod_categoria='"+categoria+"'  where cod_producto="+cod_producto);
    response.sendRedirect("../Vistas/vistaProducto.jsp");
%>