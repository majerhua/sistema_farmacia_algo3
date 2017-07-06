<%-- 
    Document   : modificarProducto
    Created on : 06-jul-2017, 11:52:45
    Author     : javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@include file="../Conexion/conexion.jsp" %>
<%
    int cod_producto = Integer.parseInt(request.getParameter("cod_producto")); 
    int mCod_categoria=0;
    String nombre="";
    int stock=0;
    
    Statement st = cn.createStatement();
    ResultSet rs = st.executeQuery("select categoria.cod_categoria,producto.nombre,producto.nombre,stock from producto,categoria where categoria.cod_categoria=producto.cod_categoria and  producto.cod_producto="+cod_producto);

           while (rs.next()) {
            
             nombre = rs.getString("producto.nombre");
             stock = rs.getInt("stock");
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
    <h1>Modificar Producto</h1>
        
        
            <div class="row container">
                
                <div class="contenedor-formulario col-sm-4">
                    <form action="modificarProducto2.jsp" method="POST">
                        
                        <input type="hidden" value="<%=cod_producto%>" name="cod_producto">
                        <label for="categoria">Categoria</label>
                            <select  id="proveedor" class="form-control" name="categoria">
                                
                                 <%
                                     try{
                              Statement st1 = cn.createStatement();
                              ResultSet rs1 = st1.executeQuery("select *from categoria");
                              
                                     while (rs1.next()) {
                                        out.println("<option value='"+rs1.getInt("cod_categoria")+"'>"+rs1.getString("nombre")+"</option>");
                                         } 
                                     }catch(Exception e){
                                            
                                            

                                     }            
                                        %>
                                
                            </select>
                        
                        <div class="form-group">
                            <label for="nombre">Nombre</label>
                            <input type="text" value="<%=nombre%>" id="nombre" class="form-control" name="nombre" >
                        </div>
                        
                        
                        
                        
                        <button type="submit" class="btn btn-primary">Modificar</button>
                    </form>
                </div>
        
                </div>
            
      
                          
    </body>
</html>