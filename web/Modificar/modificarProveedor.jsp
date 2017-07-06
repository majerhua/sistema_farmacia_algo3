<%-- 
    Document   : modificarProveedor
    Created on : 06-jul-2017, 0:00:56
    Author     : javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@include file="../Conexion/conexion.jsp" %>
<%
    int cod_proveedor = Integer.parseInt(request.getParameter("cod_proveedor"));
    String mNombre="";
    String mDireccion="";
    String mTelefono="";
    
    Statement st = cn.createStatement();
    ResultSet rs = st.executeQuery("select *from proveedor where cod_proveedor="+cod_proveedor);

           while (rs.next()) {
             mNombre = rs.getString("nombre");
             mDireccion = rs.getString("direccion");
             mTelefono  = rs.getString("telefono");
           }  
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proveedor</title>
        <link rel="stylesheet"  href="../css/bootstrap.min.css">
        <link rel="stylesheet"  href="../css/estilos.css">
       <script src="../js/jquery.js"></script>
       
    </head>
    <body>
    <h1>Modificar Proveedor</h1>
        
        
            <div class="row container">
                
                <div class="contenedor-formulario col-sm-4">
                    <form action="modificarProveedor2.jsp" method="POST">
                        
                        <input type="hidden" value="<%=cod_proveedor%>" name="cod_proveedor">
                        
                        <div class="form-group">
                            <label for="nombre">Nombre</label>
                            <input type="text" value="<%=mNombre%>" id="nombre" class="form-control" name="nombre">
                        </div>
                        
                        <div class="form-group">
                            <label for="direccion">Direccion</label>
                            <input type="text" value="<%=mDireccion%>" id="direccion" class="form-control" name="direccion">
                        </div>
                        
                        <div class="form-group">
                            <label for="telefono">Telefono</label>
                            <input type="text" value="<%=mTelefono%>" id="telefono" class="form-control" name="telefono">
                        </div>
                        
                        <button type="submit" class="btn btn-default">Registrar</button>
                    </form>
                </div>
        
                </div>
            
      
                          
    </body>
</html>
