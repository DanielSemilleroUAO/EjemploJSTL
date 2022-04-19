<%-- 
    Document   : jstlCore
    Created on : 19/04/2022, 11:39:11 a. m.
    Author     : adseglocdom
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL Core</title>
    </head>
    <body>
        <h1>JSTL Core (Jsp Standart Tag Library)</h1>
        <!-- Manipulación de  variables -->
        <!-- Se define la variable -->
        <c:set var="nombre" value="Daniel" />
        <!-- Se muestra la variable -->
        Variable nombre: <c:out value="${nombre}" />
        <br/>
        <br/>
        Variable con código html: <c:out value="<h4>Hola</h4>" escapeXml="false"/>
        <br/>
        <br/>
        <c:set var="bandera" value="true" />
        <c:if test="${!bandera}" >
            La bandera es verdadera
        </c:if>
        <br/>
        <c:if test="${param.opcion != null}">
            <c:choose>
                <c:when test="${param.opcion == 1}">
                    <br/>
                    Opción 1 seleccionada
                </c:when>
                <c:when test="${param.opcion == 2}">
                    <br/>
                    Opción 2 seleccionada
                </c:when>
                <c:otherwise>
                    Opcion proporcionada desconocida: ${param.opcion}
                </c:otherwise>
            </c:choose>
        </c:if>
        <%
            String[] nombres = {"Claudia", "Daniel", "Alicia"};
            request.setAttribute("nombres", nombres);
        %>
        <br/>
        Lista de Nombres:
        <ul>
            <c:forEach var="persona" items="${nombres}">
                <li>Nombre: ${persona}</li>
            </c:forEach>
        </ul>
        <br/>
        <a href="index.jsp">Regresar al inicio</a>
    </body>
</html>
