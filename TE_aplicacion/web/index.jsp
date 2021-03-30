
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Nota"%>

<%
    if(session.getAttribute("listaper")==null)
            {
              
             ArrayList<Nota> la = new ArrayList<Nota>();
             session.setAttribute("listaper", la);
            }
    ArrayList <Nota> lista = (ArrayList<Nota>) session.getAttribute("listaper");
%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <body>
        <h1>ACTIVIDADES </h1>
        <a href="MainSerlvet?op=nuevo">Nuevo registro</a>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>hora</th>
                <th>actividad</th>
                <th>completado</th>
                 
                <th></th>
                <th></th>
            </tr>
            <%
              if (lista !=null){
                  for(Nota item : lista){
              
            %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getHora()%></td>
                <td><%= item.getActividad() %></td>
                <td><%= item.getCompletado() %></td>
                <td><a href="MainSerlvet?op=editar&id<%= item.getId()%>">editar</a></td>
                <td><a href="MainSerlvet?op=eliminar&id<%= item.getId()%>"
                       onclick="return(confirm('estaseguro de eliminar??'))"
                       >eliminar</a></td>
            </tr>
            <%
                  }
              }
            %>
        </table>
    </body>
    </body>
</html>
