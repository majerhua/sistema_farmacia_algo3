<%-- 
    Document   : modificarCategoria
    Created on : 05-jul-2017, 18:34:14
    Author     : javier
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@include file="../Conexion/conexion.jsp" %>
<%
    int cod_categoria = Integer.parseInt(request.getParameter("cod_categoria")); 
    String mNombre="";
    
    Statement st = cn.createStatement();
    ResultSet rs = st.executeQuery("select *from categoria where cod_categoria="+cod_categoria);

           while (rs.next()) {
             mNombre = rs.getString("nombre");
           }   
      
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Categoria</title>
        <link rel="stylesheet"  href="../css/bootstrap.min.css">
        <link rel="stylesheet"  href="../css/estilos.css">
       <script src="../js/jquery.js"></script>
       
    </head>
    <body>
    <h1>Modificar Categoria</h1>
        
        
            <div class="row container">
                
                <div class="contenedor-formulario col-sm-4">
                    <form action="modificarCategoria2.jsp" method="POST">
                        
                        <input type="hidden" value="<%=cod_categoria%>" name="cod_categoria">
                        <div class="form-group">
                            <label for="nombre">Nombre</label>
                            <input type="text" value="<%=mNombre%>" id="nombre" class="form-control" name="nombre" >
                        </div>
                        
                        <button type="submit" class="btn btn-default">Submit</button>
                    </form>
                </div>
        
                </div>
            
      
                          
    </body>
</html>

