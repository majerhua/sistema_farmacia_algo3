<%-- 
    Document   : vistaCompra
    Created on : 06-jul-2017, 0:42:36
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
        <title>Categoria</title>
        <link rel="stylesheet"  href="../css/bootstrap.min.css">
        <link rel="stylesheet"  href="../css/estilos.css">
       <script src="../js/jquery.js"></script>
       
    </head>
    <body>
    <h1>Compra</h1>
        
        
            <div class="row container">
                <div class="contenedor-formulario col-sm-4">
                    <form action="../Registrar/registrarCompra.jsp" method="POST">
                        
                        <div class="form-group">
                            <label for="proveedor">Proveedor</label>
                            <select  id="proveedor" class="form-control" name="proveedor">
                                
                                 <%
                                     try{
                              Statement st1 = cn.createStatement();
                              ResultSet rs1 = st1.executeQuery("select *from proveedor");
                              
                                     while (rs1.next()) {
                                        out.println("<option value='"+rs1.getInt("cod_proveedor")+"'>"+rs1.getString("nombre")+"</option>");
                                         } 
                                     }catch(Exception e){
                                            
                                            

                                     }            
                                        %>
                                
                            </select>
                        </div>
   
                        <div class="form-group">
                            <label for="fecha">Fecha</label>
                            <input type="date" id="fecha" class="form-control" name="fecha">
                        </div>
                                              
                        
                        <button type="submit" class="btn btn-primary">Registrar</button>
                    </form>
                </div>
        
                <div class="table-responsive col-sm-8"> 

                    <table class="table">
                      <thead>
                        <tr>
                          <th>Codig Compra</th>
                          <th>Proveedor</th>
                          <th>Fecha</th>
                          
                          <th>Editar</th>
                          <th>Eliminar</th>
                          <th>Detalle</th>
                        </tr>
                      </thead>
                      <tbody>
                          
                          <%
                              ResultSet rs=null;
                              try{
                              Statement st = cn.createStatement();
                               rs = st.executeQuery("select cod_compra,proveedor.cod_proveedor, proveedor.nombre,  fecha  from compra,proveedor where proveedor.cod_proveedor=compra.cod_proveedor");
                                
                                     while (rs.next()) {
                                        out.println("<tr>");
                                        out.println("<td>"+rs.getInt("cod_compra")+"</td>");
                                        out.println("<td>"+rs.getString("proveedor.nombre")+"</td>");
                                        out.println("<td>"+rs.getString("fecha")+"</td>");
                                     
                             
                                        %>
                                        
                                        <td> 
                                        <a href="../Modificar/modificarCompra.jsp?cod_compra=<%=rs.getInt("cod_compra")%>">    
                                        <button id="editar" class="btn btn-success" width="50" height="20"/>Editar</button>
                                        </a>
                                        </td>
                                        
                                        <td>
                                    
                                            <button class="btn btn-danger" id="eliminar" width="50" height="20" value="<%=rs.getInt("cod_compra")%>" />Eliminar</button>
                                        </td>
                                        
                                        <td>
                                    
                                            <a href="../Vistas/vistaDetalleCompra.jsp?cod_compra=<%=rs.getInt("cod_compra")%>">    
                                            <button id="editar" class="btn btn-primary" width="50" height="20"/>Detalle</button>
                                            </a>
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
                var eliminar = document.getElementById("eliminar");
                
                eliminar.onclick=function(){
                    
                    valorid = eliminar.value;
                    boleliminar=confirm("Desea eliminar Compra ?");
                    
                    if(boleliminar){
                        location.href ="../Eliminar/eliminarCompra.jsp?cod_compra="+valorid;
                    }else{
                            alert("No se Elimino");
                    }
                    
                }
        </script>
    </body>
    
</html>

