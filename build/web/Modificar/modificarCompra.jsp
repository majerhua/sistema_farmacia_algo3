<%-- 
    Document   : modificarCompra
    Created on : 06-jul-2017, 0:42:02
    Author     : javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@include file="../Conexion/conexion.jsp" %>
<%
    int cod_compra = Integer.parseInt(request.getParameter("cod_compra")); 
    int mCod_cProveedor=0;
    String fecha="";
    String mNombreProveedor="";
    
    Statement st = cn.createStatement();
    ResultSet rs = st.executeQuery("select proveedor.cod_proveedor,fecha,proveedor.nombre from compra,proveedor where proveedor.cod_proveedor=compra.cod_proveedor and  compra.cod_compra="+cod_compra);

           while (rs.next()) {
             mCod_cProveedor = rs.getInt("cod_proveedor");
             mNombreProveedor = rs.getString("proveedor.nombre");
             fecha = rs.getString("fecha");
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
                    <form action="modificarCompra2.jsp" method="POST">
                        
                        <input type="hidden" value="<%=cod_compra%>" name="cod_compra">
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
                        
                        <div class="form-group">
                            <label for="nombre">Fecha</label>
                            <input type="text" value="<%=fecha%>" id="fecha" class="form-control" name="fecha" >
                        </div>
                        
                        <button type="submit" class="btn btn-primary">Modificar</button>
                    </form>
                </div>
        
                </div>
            
      
                          
    </body>
</html>