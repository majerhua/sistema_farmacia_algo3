package org.apache.jsp.Vistas;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;
import java.sql.*;
import java.util.*;

public final class vistaProducto_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/Vistas/../Conexion/conexion.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

     Connection cn=null;
     
     try{
         
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://127.0.0.1/algo3","root","123");
            
     }
    catch(SQLException ex){
        
            out.println("Se produjo una excepción durante la conexión:"+ex);
            
       }
     

      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Producto</title>\n");
      out.write("        <link rel=\"stylesheet\"  href=\"../css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\"  href=\"../css/estilos.css\">\n");
      out.write("       <script src=\"../js/jquery.js\"></script>\n");
      out.write("       \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <h1>Producto</h1>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("            <div class=\"row container\">\n");
      out.write("                <div class=\"contenedor-formulario col-sm-4\">\n");
      out.write("                    <form action=\"../Registrar/registrarProducto.jsp\" method=\"POST\">\n");
      out.write("                        \n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"categoria\">Producto</label>\n");
      out.write("                            <select  id=\"proveedor\" class=\"form-control\" name=\"categoria\">\n");
      out.write("                                \n");
      out.write("                                 ");

                                     try{
                              Statement st1 = cn.createStatement();
                              ResultSet rs1 = st1.executeQuery("select *from categoria");
                              
                                     while (rs1.next()) {
                                        out.println("<option value='"+rs1.getInt("cod_categoria")+"'>"+rs1.getString("nombre")+"</option>");
                                         } 
                                     }catch(Exception e){
                                            
                                            

                                     }            
                                        
      out.write("\n");
      out.write("                                \n");
      out.write("                            </select>\n");
      out.write("                        </div>\n");
      out.write("   \n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"nombre\">Nombre</label>\n");
      out.write("                            <input type=\"text\" id=\"nombre\" class=\"form-control\" name=\"nombre\">\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                         <div class=\"form-group\">\n");
      out.write("                            \n");
      out.write("                            <input type=\"hidden\" id=\"stock\" class=\"form-control\" name=\"stock\" value=\"0\">\n");
      out.write("                        </div>                \n");
      out.write("                        \n");
      out.write("                        <button type=\"submit\" class=\"btn btn-primary\">Registrar</button>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("        \n");
      out.write("                <div class=\"table-responsive col-sm-8\"> \n");
      out.write("\n");
      out.write("                    <table class=\"table\">\n");
      out.write("                      <thead>\n");
      out.write("                        <tr>\n");
      out.write("                          <th>Codig Producto</th>\n");
      out.write("                          <th>Categoria</th>\n");
      out.write("                          <th>Producto</th>\n");
      out.write("                          <th>Stock</th>\n");
      out.write("                          \n");
      out.write("                          <th>Editar</th>\n");
      out.write("                          <th>Eliminar</th>\n");
      out.write("                         \n");
      out.write("                        </tr>\n");
      out.write("                      </thead>\n");
      out.write("                      <tbody>\n");
      out.write("                          \n");
      out.write("                          ");

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
                             
                                        
      out.write("\n");
      out.write("                                        \n");
      out.write("                                        <td> \n");
      out.write("                                        <a href=\"../Modificar/modificarProducto.jsp?cod_producto=");
      out.print(rs.getInt("cod_producto"));
      out.write("\">    \n");
      out.write("                                        <button id=\"editar\" class=\"btn btn-success\" width=\"50\" height=\"20\"/>Editar</button>\n");
      out.write("                                        </a>\n");
      out.write("                                        </td>\n");
      out.write("                                        \n");
      out.write("                                        <td>\n");
      out.write("                                    \n");
      out.write("                                            <button class=\"btn btn-danger\" id=\"eliminar\" width=\"50\" height=\"20\" value=\"");
      out.print(rs.getInt("cod_producto"));
      out.write("\" />Eliminar</button>\n");
      out.write("                                        </td>\n");
      out.write("                                        \n");
      out.write("                                        \n");
      out.write("                                   ");
 out.println("</tr>");
                                   
                                    }
                                        
                                     }catch(Exception e){
                              }
                          
      out.write("\n");
      out.write("                        \n");
      out.write("                      </tbody>\n");
      out.write("                    </table>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("                          \n");
      out.write("         <script type=\"text/javascript\">\n");
      out.write("                var eliminar = document.getElementById(\"eliminar\");\n");
      out.write("                \n");
      out.write("                eliminar.onclick=function(){\n");
      out.write("                    \n");
      out.write("                    valorid = eliminar.value;\n");
      out.write("                    boleliminar=confirm(\"Desea eliminar Producto ?\");\n");
      out.write("                    \n");
      out.write("                    if(boleliminar){\n");
      out.write("                        location.href =\"../Eliminar/eliminarProducto.jsp?cod_producto=\"+valorid;\n");
      out.write("                    }else{\n");
      out.write("                            alert(\"No se Elimino\");\n");
      out.write("                    }\n");
      out.write("                    \n");
      out.write("                }\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("    \n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
