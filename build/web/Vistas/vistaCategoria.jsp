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
    <h1>Categoria</h1>
        
        
            <div class="row container">
                <div class="contenedor-formulario col-sm-4">
                    <form action="../Registrar/registrarCategoria.jsp" method="POST">
                        
                        <div class="form-group">
                            <label for="nombre">Nombre</label>
                            <input type="text" id="nombre" class="form-control" name="nombre">
                        </div>
                        
                        <button type="submit" class="btn btn-default">Submit</button>
                    </form>
                </div>
        
                <div class="table-responsive col-sm-8"> 

                    <table class="table">
                      <thead>
                        <tr>
                          <th>Codig Categoria</th>
                          <th>Nombre</th>
                          <th>Editar</th>
                          <th>Eliminar</th>
                        </tr>
                      </thead>
                      <tbody>
                          
                          <%
                              Statement st = cn.createStatement();
                              ResultSet rs = st.executeQuery("select *from categoria");
                              
                                     while (rs.next()) {
                                        out.println("<tr>");
                                        out.println("<td>"+rs.getInt("cod_categoria")+"</td>");
                                        out.println("<td>"+rs.getString("nombre")+"</td>");
                                        
                                        %>
                                        
                                        <td> 
                                        <a href="../Modificar/modificarCategoria.jsp?cod_categoria=<%=rs.getInt("cod_categoria")%>">    
                                        <button id="editar" class="btn btn-success" width="50" height="20"/>Editar</button>
                                        </a>
                                        </td>
                                        
                                        <td>
                                    
                                            <button class="btn btn-danger eliminar" id="eliminar" width="50" height="20" value="<%=rs.getInt("cod_categoria")%>" />Eliminar</button>
                                        </td>
                                        
                                   <% out.println("</tr>");}
                          %>
                        
                      </tbody>
                    </table>

                </div>
            
        </div>
                          
         <script type="text/javascript">
                var eliminar = document.getElementByClassName("eliminar");
                
                eliminar.onclick=function(){
                    
                    valorid = eliminar.value;
                    boleliminar=confirm("Desea eliminar categoria ?");
                    
                    if(boleliminar){
                        location.href ="../Eliminar/eliminarCategoria.jsp?cod_categoria="+valorid;
                    }else{
                            alert("No se Elimino");
                    }
                    
                }
        </script>
    </body>
    
</html>
