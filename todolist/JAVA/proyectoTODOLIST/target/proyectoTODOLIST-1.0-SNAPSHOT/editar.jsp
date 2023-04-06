<%-- 
    Document   : editar
    Created on : 5/04/2023, 17:33:21
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
        <jsp:useBean class="edu.levelup.entities.Usuario" scope="session" id="usuarioBean"/>
        <jsp:useBean class="edu.levelup.services.TareaService" scope="session" id="tareaService" />
        <h1>EDITAR</h1>
        <form method="post" action="tarea.jsp">
            <input type="hidden" name="idTarea" value="<%= tarea.getIdTarea() %>">
            <input type="text" name="nombre" value="<%= tarea.getNombre() %>">
            <input type="submit" value="Guardar">
        </form>

    </body>
</html>
