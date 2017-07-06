<%-- 
    Document   : vistaCategoria
    Created on : 05-jul-2017, 18:24:49
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
    <h1>Proveedor</h1>
        
        
            <div class="row container">
                <div class="contenedor-formulario col-sm-4">
                    <form action="../Registrar/registrarProveedor.jsp" method="POST">
                        
                        <div class="form-group">
                            <label for="nombre">Nombre</label>
                            <input type="text" id="nombre" class="form-control" name="nombre">
                        </div>
                        
                        <div class="form-group">
                            <label for="nombre">direccion</label>
                            <input type="text" id="direccion" class="form-control" name=direccion>
                        </div>
                        
                        <div class="form-group">
                            <label for="nombre">telefono</label>
                            <input type="text" id="telefono" class="form-control" name="telefono">
                        </div>
                                              
                        
                        <button type="submit" class="btn btn-primary">Registrar</button>
                    </form>
                </div>
        
                <div class="table-responsive col-sm-8"> 

                    <table class="table">
                      <thead>
                        <tr>
                          <th>Codig Categoria</th>
                          <th>Nombre</th>
                          <th>Direccion</th>
                          <th>Telefono</th>
                          <th>Editar</th>
                          <th>Eliminar</th>
                        </tr>
                      </thead>
                      <tbody>
                          
                          <%
                              Statement st = cn.createStatement();
                              ResultSet rs = st.executeQuery("select *from proveedor");
                              
                                     while (rs.next()) {
                                        out.println("<tr>");
                                        out.println("<td>"+rs.getInt("cod_proveedor")+"</td>");
                                        out.println("<td>"+rs.getString("nombre")+"</td>");
                                        out.println("<td>"+rs.getString("direccion")+"</td>");
                                        out.println("<td>"+rs.getString("telefono")+"</td>");
                                        %>
                                        
                                        <td> 
                                        <a href="../Modificar/modificarProveedor.jsp?cod_proveedor=<%=rs.getInt("cod_proveedor")%>">    
                                        <button id="editar" class="btn btn-success" width="50" height="20"/>Editar</button>
                                        </a>
                                        </td>
                                        
                                        <td>
                                    
                                            <button class="btn btn-danger" id="eliminar" width="50" height="20" value="<%=rs.getInt("cod_proveedor")%>" />Eliminar</button>
                                        </td>
                                        
                                   <% out.println("</tr>");}
                          %>
                        
                      </tbody>
                    </table>

                </div>
            
        </div>
                          
         <script type="text/javascript">
                var eliminar = document.getElementById("eliminar");
                
                eliminar.onclick=function(){
                    
                    valorid = eliminar.value;
                    boleliminar=confirm("Desea eliminar Proveedor ?");
                    
                    if(boleliminar){
                        location.href ="../Eliminar/eliminarProveedor.jsp?cod_proveedor="+valorid;
                    }else{
                            alert("No se Elimino");
                    }
                    
                }
        </script>
    </body>
    
</html>
