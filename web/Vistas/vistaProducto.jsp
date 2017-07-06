<%-- 
    Document   : vistaProducto
    Created on : 06-jul-2017, 1:15:49
    Author     : javier
--%>

<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@include file="../Conexion/conexion.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Producto</title>
        <link rel="stylesheet"  href="../css/bootstrap.min.css">
        <link rel="stylesheet"  href="../css/estilos.css">
       <script src="../js/jquery.js"></script>
       
    </head>
    <body>
    <h1>Producto</h1>
        
        
            <div class="row container">
                <div class="contenedor-formulario col-sm-4">
                    <form action="../Registrar/registrarProducto.jsp" method="POST">
                        
                        <div class="form-group">
                            <label for="categoria">Producto</label>
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
                        </div>
   
                        <div class="form-group">
                            <label for="nombre">Nombre</label>
                            <input type="text" id="nombre" class="form-control" name="nombre">
                        </div>
                        
                         <div class="form-group">
                            
                            <input type="hidden" id="stock" class="form-control" name="stock" value="0">
                        </div>                
                        
                        <button type="submit" class="btn btn-primary">Registrar</button>
                    </form>
                </div>
        
                <div class="table-responsive col-sm-8"> 

                    <table class="table">
                      <thead>
                        <tr>
                          <th>Codig Producto</th>
                          <th>Categoria</th>
                          <th>Producto</th>
                          <th>Stock</th>
                          
                          <th>Editar</th>
                          <th>Eliminar</th>
                         
                        </tr>
                      </thead>
                      <tbody>
                          
                          <%
                              ResultSet rs=null;
                              try{
                              Statement st = cn.createStatement();
                               rs = st.executeQuery("select cod_producto,producto.nombre,categoria.cod_categoria, categoria.nombre,  stock  from producto,categoria where producto.cod_categoria=categoria.cod_categoria");
                                
                                     while (rs.next()) {
                                        out.println("<tr>");
                                        out.println("<td>"+rs.getInt("cod_producto")+"</td>");
                                        out.println("<td>"+rs.getString("categoria.nombre")+"</td>");
                                        out.println("<td>"+rs.getString("producto.nombre")+"</td>");
                                        out.println("<td>"+rs.getString("stock")+"</td>");
                             
                                        %>
                                        
                                        <td> 
                                        <a href="../Modificar/modificarProducto.jsp?cod_producto=<%=rs.getInt("cod_producto")%>">    
                                        <button id="editar" class="btn btn-success" width="50" height="20"/>Editar</button>
                                        </a>
                                        </td>
                                        
                                        <td>
                                    
                                            <button class="btn btn-danger" onclick="eliminar(<%=rs.getInt("cod_producto")%>)"  width="50" height="20" value="<%=rs.getInt("cod_producto")%>" />Eliminar</button>
                                        </td>
                                        
                                        
                                   <% out.println("</tr>");
                                   
                                    }
                                        
                                     }catch(Exception e){
                              }
                          %>
                        
                      </tbody>
                    </table>

                </div>
            
        </div>
                          
         <script type="text/javascript">
             
                
                
                function eliminar(id){
                    
                    valorid = id
                    boleliminar=confirm("Desea eliminar Producto ?"+" id==> "+id);
                    
                    if(boleliminar){
                        location.href ="../Eliminar/eliminarProducto.jsp?cod_producto="+valorid;
                    }else{
                            alert("No se Elimino");
                    }
                    
                }
        </script>
    </body>
    
</html>

