<%-- 
    Document   : eliminar
    Created on : 4/04/2023, 16:42:05
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
        <h1>ELIMINASTE LA TAREA</h1>
        <jsp:useBean class="edu.levelup.services.TareaService" scope="session" id="tareaService" />
        <%Integer idTarea = Integer.parseInt(request.getParameter("idTarea"));%>
        <%tareaService.eliminarTarea(idTarea);%>
    </body>
</html>
