<%-- 
    Document   : newtarea
    Created on : 29/03/2023, 14:50:24
    Author     : marher
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tareas</h1>
        <jsp:useBean class="edu.levelup.entities.Usuario" scope="session" id="usuarioBean"/>
        <jsp:useBean class="edu.levelup.services.UsuarioService" scope="session" id="usuarioService"/>
        <jsp:useBean class="edu.levelup.services.TareaService" scope="session" id="tareaService" />


        <%String usuario = request.getParameter("usuario");
          String password = request.getParameter("password");
           usuarioBean = usuarioService.autenticar(usuario, password);
           if (usuarioBean == null) {%>
        <h2>Error de autenticación</h2>
        <a href="login.jsp"> Intente nuevamente </a>
        <%} else{ %>
        <form action="tareas.jsp">
            Agregar tarea <input type="text" name="nombre" />
            <input type="submit" value="Agregar"/>
            Eliminar tarea <input type="text" name="nombre" />
            <input type="submit" value="Eliminar"/>
        </form>
        <ul>
            <%
                java.util.List<edu.levelup.entities.Tarea> lista = tareaService.listarTareas();
                for (int  i = 0 ; i< lista.size(); i++){
                    edu.levelup.entities.Tarea tarea = (edu.levelup.entities.Tarea)lista.get(i);
                    out.println("<li>" + tarea.getIdTarea()+"  - "+ tarea.getNombre() + "</li>");
                }
            %>
        </ul> 
    </ul>


    <%}%>

</body>
</html>
